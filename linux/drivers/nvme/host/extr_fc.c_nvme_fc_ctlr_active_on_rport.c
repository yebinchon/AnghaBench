
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvme_fc_rport {int act_ctrl_cnt; } ;
struct nvme_fc_ctrl {int assoc_active; struct nvme_fc_rport* rport; } ;


 int atomic_inc_return (int *) ;
 int nvme_fc_rport_active_on_lport (struct nvme_fc_rport*) ;

__attribute__((used)) static int
nvme_fc_ctlr_active_on_rport(struct nvme_fc_ctrl *ctrl)
{
 struct nvme_fc_rport *rport = ctrl->rport;
 u32 cnt;

 if (ctrl->assoc_active)
  return 1;

 ctrl->assoc_active = 1;
 cnt = atomic_inc_return(&rport->act_ctrl_cnt);
 if (cnt == 1)
  nvme_fc_rport_active_on_lport(rport);

 return 0;
}
