
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ctrl {int dummy; } ;
struct TYPE_2__ {int err_work; } ;


 int NVME_CTRL_RESETTING ;
 int nvme_change_ctrl_state (struct nvme_ctrl*,int ) ;
 int nvme_wq ;
 int queue_work (int ,int *) ;
 TYPE_1__* to_tcp_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_tcp_error_recovery(struct nvme_ctrl *ctrl)
{
 if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING))
  return;

 queue_work(nvme_wq, &to_tcp_ctrl(ctrl)->err_work);
}
