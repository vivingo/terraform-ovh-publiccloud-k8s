output "rendered" {
  description = "The representation of the userdata"
  value = ["${data.template_file.config.*.rendered}"]
}

output "etcd_initial_cluster" {
  description = "The etcd initial cluster that can be used to join the cluster"
  value = "${module.etcd.etcd_initial_cluster}"
}

output "etcd_endpoints" {
  description = "The etcd client endpoints that can be used to interact with the cluster"
  value = "${module.etcd.etcd_endpoints}"
}

output "cfssl_endpoint" {
  description = "The cfssl endpoint"
  value = "${module.cfssl.endpoint}"
}
