
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ port_state; } ;
struct nvme_fc_rport {TYPE_2__ remoteport; int act_ctrl_cnt; struct nvme_fc_lport* lport; } ;
struct nvme_fc_lport {TYPE_1__* ops; } ;
struct nvme_fc_ctrl {struct nvme_fc_rport* rport; } ;
struct TYPE_3__ {int (* remoteport_delete ) (TYPE_2__*) ;} ;


 scalar_t__ FC_OBJSTATE_DELETED ;
 scalar_t__ atomic_dec_return (int *) ;
 int nvme_fc_rport_inactive_on_lport (struct nvme_fc_rport*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int
nvme_fc_ctlr_inactive_on_rport(struct nvme_fc_ctrl *ctrl)
{
 struct nvme_fc_rport *rport = ctrl->rport;
 struct nvme_fc_lport *lport = rport->lport;
 u32 cnt;



 cnt = atomic_dec_return(&rport->act_ctrl_cnt);
 if (cnt == 0) {
  if (rport->remoteport.port_state == FC_OBJSTATE_DELETED)
   lport->ops->remoteport_delete(&rport->remoteport);
  nvme_fc_rport_inactive_on_lport(rport);
 }

 return 0;
}
