
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct se_tmr_req {TYPE_2__* task_cmd; } ;
struct se_session {struct se_portal_group* se_tpg; struct se_node_acl* se_node_acl; } ;
struct se_portal_group {TYPE_3__* se_tpg_tfo; } ;
struct se_node_acl {int initiatorname; } ;
struct TYPE_5__ {int emulate_tas; } ;
struct se_device {int dev_reservation_flags; TYPE_4__* transport; int num_resets; int dev_reservation_lock; int * reservation_holder; TYPE_1__ dev_attrib; } ;
struct se_cmd {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {char* fabric_name; } ;
struct TYPE_6__ {struct se_session* se_sess; } ;


 int DRF_SPC2_RESERVATIONS ;
 int atomic_long_inc (int *) ;
 int core_tmr_drain_state_list (struct se_device*,struct se_cmd*,struct se_session*,int,struct list_head*) ;
 int core_tmr_drain_tmr_list (struct se_device*,struct se_tmr_req*,struct list_head*) ;
 int pr_debug (char*,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int core_tmr_lun_reset(
        struct se_device *dev,
        struct se_tmr_req *tmr,
        struct list_head *preempt_and_abort_list,
        struct se_cmd *prout_cmd)
{
 struct se_node_acl *tmr_nacl = ((void*)0);
 struct se_portal_group *tmr_tpg = ((void*)0);
 struct se_session *tmr_sess = ((void*)0);
 int tas;
 tas = dev->dev_attrib.emulate_tas;




 if (tmr && tmr->task_cmd && tmr->task_cmd->se_sess) {
  tmr_sess = tmr->task_cmd->se_sess;
  tmr_nacl = tmr_sess->se_node_acl;
  tmr_tpg = tmr_sess->se_tpg;
  if (tmr_nacl && tmr_tpg) {
   pr_debug("LUN_RESET: TMR caller fabric: %s"
    " initiator port %s\n",
    tmr_tpg->se_tpg_tfo->fabric_name,
    tmr_nacl->initiatorname);
  }
 }
 pr_debug("LUN_RESET: %s starting for [%s], tas: %d\n",
  (preempt_and_abort_list) ? "Preempt" : "TMR",
  dev->transport->name, tas);

 core_tmr_drain_tmr_list(dev, tmr, preempt_and_abort_list);
 core_tmr_drain_state_list(dev, prout_cmd, tmr_sess, tas,
    preempt_and_abort_list);





 if (!preempt_and_abort_list &&
      (dev->dev_reservation_flags & DRF_SPC2_RESERVATIONS)) {
  spin_lock(&dev->dev_reservation_lock);
  dev->reservation_holder = ((void*)0);
  dev->dev_reservation_flags &= ~DRF_SPC2_RESERVATIONS;
  spin_unlock(&dev->dev_reservation_lock);
  pr_debug("LUN_RESET: SCSI-2 Released reservation\n");
 }

 atomic_long_inc(&dev->num_resets);

 pr_debug("LUN_RESET: %s for [%s] Complete\n",
   (preempt_and_abort_list) ? "Preempt" : "TMR",
   dev->transport->name);
 return 0;
}
