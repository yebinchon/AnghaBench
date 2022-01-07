
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_rdma_ctrl {int err_work; int ctrl; } ;


 int NVME_CTRL_RESETTING ;
 int nvme_change_ctrl_state (int *,int ) ;
 int nvme_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void nvme_rdma_error_recovery(struct nvme_rdma_ctrl *ctrl)
{
 if (!nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_RESETTING))
  return;

 queue_work(nvme_wq, &ctrl->err_work);
}
