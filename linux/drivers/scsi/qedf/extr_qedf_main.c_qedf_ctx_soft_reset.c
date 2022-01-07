
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qedf_ctx {int link_update; int link_update_wq; int dbg_ctx; scalar_t__ vlan_id; int link_state; int cdev; int num_offloads; } ;
struct qed_link_output {int link_up; } ;
struct fc_lport {scalar_t__ vport; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* get_link ) (int ,struct qed_link_output*) ;} ;


 int QEDF_ERR (int *,char*) ;
 int QEDF_INFO (int *,int ,char*) ;
 int QEDF_LINK_DOWN ;
 int QEDF_LINK_UP ;
 int QEDF_LOG_DISC ;
 int WARN_ON (int ) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int flush_delayed_work (int *) ;
 struct qedf_ctx* lport_priv (struct fc_lport*) ;
 int msleep (int) ;
 TYPE_2__* qed_ops ;
 int qedf_wait_for_upload (struct qedf_ctx*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int stub1 (int ,struct qed_link_output*) ;

void qedf_ctx_soft_reset(struct fc_lport *lport)
{
 struct qedf_ctx *qedf;
 struct qed_link_output if_link;

 if (lport->vport) {
  QEDF_ERR(((void*)0), "Cannot issue host reset on NPIV port.\n");
  return;
 }

 qedf = lport_priv(lport);


 atomic_set(&qedf->link_state, QEDF_LINK_DOWN);
 QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_DISC,
    "Queuing link down work.\n");
 queue_delayed_work(qedf->link_update_wq, &qedf->link_update,
     0);

 if (qedf_wait_for_upload(qedf) == 0) {
  QEDF_ERR(&qedf->dbg_ctx, "Could not upload all sessions.\n");
  WARN_ON(atomic_read(&qedf->num_offloads));
 }


 qed_ops->common->get_link(qedf->cdev, &if_link);

 if (!if_link.link_up) {
  QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_DISC,
     "Physical link is not up.\n");
  return;
 }

 flush_delayed_work(&qedf->link_update);
 msleep(500);

 atomic_set(&qedf->link_state, QEDF_LINK_UP);
 qedf->vlan_id = 0;
 QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_DISC,
    "Queue link up work.\n");
 queue_delayed_work(qedf->link_update_wq, &qedf->link_update,
     0);
}
