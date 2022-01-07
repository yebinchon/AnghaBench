
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_core_fabric_ops {int fabric_drop_tpg; int fabric_make_tpg; int fabric_drop_wwn; int fabric_make_wwn; int check_stop_free; int aborted_task; int queue_tm_rsp; int queue_status; int queue_data_in; int get_cmd_state; int set_default_node_attributes; int write_pending; int sess_get_index; int release_cmd; int tpg_get_inst_index; int tpg_check_prod_mode_write_protect; int tpg_check_demo_mode_write_protect; int tpg_check_demo_mode_cache; int tpg_check_demo_mode; int tpg_get_tag; int tpg_get_wwn; scalar_t__ fabric_name; scalar_t__ fabric_alias; } ;


 int EINVAL ;
 scalar_t__ TARGET_FABRIC_NAME_SIZE ;
 int pr_err (char*,...) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static int target_fabric_tf_ops_check(const struct target_core_fabric_ops *tfo)
{
 if (tfo->fabric_alias) {
  if (strlen(tfo->fabric_alias) >= TARGET_FABRIC_NAME_SIZE) {
   pr_err("Passed alias: %s exceeds "
    "TARGET_FABRIC_NAME_SIZE\n", tfo->fabric_alias);
   return -EINVAL;
  }
 }
 if (!tfo->fabric_name) {
  pr_err("Missing tfo->fabric_name\n");
  return -EINVAL;
 }
 if (strlen(tfo->fabric_name) >= TARGET_FABRIC_NAME_SIZE) {
  pr_err("Passed name: %s exceeds "
   "TARGET_FABRIC_NAME_SIZE\n", tfo->fabric_name);
  return -EINVAL;
 }
 if (!tfo->tpg_get_wwn) {
  pr_err("Missing tfo->tpg_get_wwn()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_get_tag) {
  pr_err("Missing tfo->tpg_get_tag()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_check_demo_mode) {
  pr_err("Missing tfo->tpg_check_demo_mode()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_check_demo_mode_cache) {
  pr_err("Missing tfo->tpg_check_demo_mode_cache()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_check_demo_mode_write_protect) {
  pr_err("Missing tfo->tpg_check_demo_mode_write_protect()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_check_prod_mode_write_protect) {
  pr_err("Missing tfo->tpg_check_prod_mode_write_protect()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_get_inst_index) {
  pr_err("Missing tfo->tpg_get_inst_index()\n");
  return -EINVAL;
 }
 if (!tfo->release_cmd) {
  pr_err("Missing tfo->release_cmd()\n");
  return -EINVAL;
 }
 if (!tfo->sess_get_index) {
  pr_err("Missing tfo->sess_get_index()\n");
  return -EINVAL;
 }
 if (!tfo->write_pending) {
  pr_err("Missing tfo->write_pending()\n");
  return -EINVAL;
 }
 if (!tfo->set_default_node_attributes) {
  pr_err("Missing tfo->set_default_node_attributes()\n");
  return -EINVAL;
 }
 if (!tfo->get_cmd_state) {
  pr_err("Missing tfo->get_cmd_state()\n");
  return -EINVAL;
 }
 if (!tfo->queue_data_in) {
  pr_err("Missing tfo->queue_data_in()\n");
  return -EINVAL;
 }
 if (!tfo->queue_status) {
  pr_err("Missing tfo->queue_status()\n");
  return -EINVAL;
 }
 if (!tfo->queue_tm_rsp) {
  pr_err("Missing tfo->queue_tm_rsp()\n");
  return -EINVAL;
 }
 if (!tfo->aborted_task) {
  pr_err("Missing tfo->aborted_task()\n");
  return -EINVAL;
 }
 if (!tfo->check_stop_free) {
  pr_err("Missing tfo->check_stop_free()\n");
  return -EINVAL;
 }





 if (!tfo->fabric_make_wwn) {
  pr_err("Missing tfo->fabric_make_wwn()\n");
  return -EINVAL;
 }
 if (!tfo->fabric_drop_wwn) {
  pr_err("Missing tfo->fabric_drop_wwn()\n");
  return -EINVAL;
 }
 if (!tfo->fabric_make_tpg) {
  pr_err("Missing tfo->fabric_make_tpg()\n");
  return -EINVAL;
 }
 if (!tfo->fabric_drop_tpg) {
  pr_err("Missing tfo->fabric_drop_tpg()\n");
  return -EINVAL;
 }

 return 0;
}
