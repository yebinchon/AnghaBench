
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct se_session {TYPE_2__* se_tpg; struct se_node_acl* se_node_acl; } ;
struct se_node_acl {int dummy; } ;
struct se_lun {int lun_se_dev; int lun_ref; } ;
struct se_dev_entry {scalar_t__ lun_access_ro; int pr_res_key; int se_lun; int read_bytes; int write_bytes; int total_cmds; } ;
struct se_cmd {scalar_t__ data_direction; int lun_ref_active; TYPE_3__* se_dev; int data_length; int se_cmd_flags; scalar_t__ orig_fe_lun; struct se_lun* se_lun; TYPE_1__* se_tfo; int pr_res_key; struct se_session* se_sess; } ;
typedef int sense_reason_t ;
struct TYPE_6__ {int read_bytes; int write_bytes; int num_cmds; } ;
struct TYPE_5__ {struct se_lun* tpg_virt_lun0; } ;
struct TYPE_4__ {int fabric_name; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_NONE ;
 scalar_t__ DMA_TO_DEVICE ;
 int SCF_SE_LUN_CMD ;
 int TCM_NON_EXISTENT_LUN ;
 int TCM_NO_SENSE ;
 int TCM_WRITE_PROTECTED ;
 int atomic_long_add (int ,int *) ;
 int atomic_long_inc (int *) ;
 int percpu_ref_get (int *) ;
 int percpu_ref_tryget_live (int *) ;
 int pr_err (char*,int ,scalar_t__) ;
 struct se_lun* rcu_dereference (int ) ;
 TYPE_3__* rcu_dereference_raw (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct se_dev_entry* target_nacl_find_deve (struct se_node_acl*,scalar_t__) ;

sense_reason_t
transport_lookup_cmd_lun(struct se_cmd *se_cmd, u64 unpacked_lun)
{
 struct se_lun *se_lun = ((void*)0);
 struct se_session *se_sess = se_cmd->se_sess;
 struct se_node_acl *nacl = se_sess->se_node_acl;
 struct se_dev_entry *deve;
 sense_reason_t ret = TCM_NO_SENSE;

 rcu_read_lock();
 deve = target_nacl_find_deve(nacl, unpacked_lun);
 if (deve) {
  atomic_long_inc(&deve->total_cmds);

  if (se_cmd->data_direction == DMA_TO_DEVICE)
   atomic_long_add(se_cmd->data_length,
     &deve->write_bytes);
  else if (se_cmd->data_direction == DMA_FROM_DEVICE)
   atomic_long_add(se_cmd->data_length,
     &deve->read_bytes);

  se_lun = rcu_dereference(deve->se_lun);

  if (!percpu_ref_tryget_live(&se_lun->lun_ref)) {
   se_lun = ((void*)0);
   goto out_unlock;
  }

  se_cmd->se_lun = se_lun;
  se_cmd->pr_res_key = deve->pr_res_key;
  se_cmd->orig_fe_lun = unpacked_lun;
  se_cmd->se_cmd_flags |= SCF_SE_LUN_CMD;
  se_cmd->lun_ref_active = 1;

  if ((se_cmd->data_direction == DMA_TO_DEVICE) &&
      deve->lun_access_ro) {
   pr_err("TARGET_CORE[%s]: Detected WRITE_PROTECTED LUN"
    " Access for 0x%08llx\n",
    se_cmd->se_tfo->fabric_name,
    unpacked_lun);
   rcu_read_unlock();
   ret = TCM_WRITE_PROTECTED;
   goto ref_dev;
  }
 }
out_unlock:
 rcu_read_unlock();

 if (!se_lun) {





  if (unpacked_lun != 0) {
   pr_err("TARGET_CORE[%s]: Detected NON_EXISTENT_LUN"
    " Access for 0x%08llx\n",
    se_cmd->se_tfo->fabric_name,
    unpacked_lun);
   return TCM_NON_EXISTENT_LUN;
  }

  se_lun = se_sess->se_tpg->tpg_virt_lun0;
  se_cmd->se_lun = se_sess->se_tpg->tpg_virt_lun0;
  se_cmd->orig_fe_lun = 0;
  se_cmd->se_cmd_flags |= SCF_SE_LUN_CMD;

  percpu_ref_get(&se_lun->lun_ref);
  se_cmd->lun_ref_active = 1;




  if ((se_cmd->data_direction != DMA_FROM_DEVICE) &&
      (se_cmd->data_direction != DMA_NONE)) {
   ret = TCM_WRITE_PROTECTED;
   goto ref_dev;
  }
 }






ref_dev:
 se_cmd->se_dev = rcu_dereference_raw(se_lun->lun_se_dev);
 atomic_long_inc(&se_cmd->se_dev->num_cmds);

 if (se_cmd->data_direction == DMA_TO_DEVICE)
  atomic_long_add(se_cmd->data_length,
    &se_cmd->se_dev->write_bytes);
 else if (se_cmd->data_direction == DMA_FROM_DEVICE)
  atomic_long_add(se_cmd->data_length,
    &se_cmd->se_dev->read_bytes);

 return ret;
}
