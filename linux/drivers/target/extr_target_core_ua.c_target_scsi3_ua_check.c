
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {struct se_node_acl* se_node_acl; } ;
struct se_node_acl {int dummy; } ;
struct se_dev_entry {int ua_list; } ;
struct se_cmd {int* t_task_cdb; int orig_fe_lun; struct se_session* se_sess; } ;
typedef int sense_reason_t ;





 int TCM_CHECK_CONDITION_UNIT_ATTENTION ;
 scalar_t__ list_empty_careful (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct se_dev_entry* target_nacl_find_deve (struct se_node_acl*,int ) ;

sense_reason_t
target_scsi3_ua_check(struct se_cmd *cmd)
{
 struct se_dev_entry *deve;
 struct se_session *sess = cmd->se_sess;
 struct se_node_acl *nacl;

 if (!sess)
  return 0;

 nacl = sess->se_node_acl;
 if (!nacl)
  return 0;

 rcu_read_lock();
 deve = target_nacl_find_deve(nacl, cmd->orig_fe_lun);
 if (!deve) {
  rcu_read_unlock();
  return 0;
 }
 if (list_empty_careful(&deve->ua_list)) {
  rcu_read_unlock();
  return 0;
 }
 rcu_read_unlock();
 switch (cmd->t_task_cdb[0]) {
 case 130:
 case 129:
 case 128:
  return 0;
 default:
  return TCM_CHECK_CONDITION_UNIT_ATTENTION;
 }
}
