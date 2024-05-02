provider "google" {
  project     = "my-project-id"
  region      = "us-central1"
}

resource "google_compute_instance" "var.my-instance" {
  name         = "var.my-instance"
  machine_type = "var.machine_type"
  zone         = "us-central1-a"

#  boot_disk {
#    initialize_params {
#      image = "debian-cloud/debian-11"
#      labels = {
#        my_label = "value"
#      }
#    }
#  }

#  // Local SSD disk
#  scratch_disk {
#    interface = "NVME"
#  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

#  metadata = {
#    foo = "bar"
#  }

  metadata_startup_script = "echo hi > /test.txt"
}