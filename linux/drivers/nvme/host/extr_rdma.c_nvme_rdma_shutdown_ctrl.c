
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int admin_q; } ;
struct nvme_rdma_ctrl {TYPE_1__ ctrl; int reconnect_work; int err_work; } ;


 int blk_mq_quiesce_queue (int ) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int nvme_disable_ctrl (TYPE_1__*) ;
 int nvme_rdma_teardown_admin_queue (struct nvme_rdma_ctrl*,int) ;
 int nvme_rdma_teardown_io_queues (struct nvme_rdma_ctrl*,int) ;
 int nvme_shutdown_ctrl (TYPE_1__*) ;

__attribute__((used)) static void nvme_rdma_shutdown_ctrl(struct nvme_rdma_ctrl *ctrl, bool shutdown)
{
 cancel_work_sync(&ctrl->err_work);
 cancel_delayed_work_sync(&ctrl->reconnect_work);

 nvme_rdma_teardown_io_queues(ctrl, shutdown);
 blk_mq_quiesce_queue(ctrl->ctrl.admin_q);
 if (shutdown)
  nvme_shutdown_ctrl(&ctrl->ctrl);
 else
  nvme_disable_ctrl(&ctrl->ctrl);
 nvme_rdma_teardown_admin_queue(ctrl, shutdown);
}
