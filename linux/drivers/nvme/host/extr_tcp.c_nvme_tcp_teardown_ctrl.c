
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ctrl {int admin_q; } ;
struct TYPE_2__ {int connect_work; int err_work; } ;


 int blk_mq_quiesce_queue (int ) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int nvme_disable_ctrl (struct nvme_ctrl*) ;
 int nvme_shutdown_ctrl (struct nvme_ctrl*) ;
 int nvme_tcp_teardown_admin_queue (struct nvme_ctrl*,int) ;
 int nvme_tcp_teardown_io_queues (struct nvme_ctrl*,int) ;
 TYPE_1__* to_tcp_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_tcp_teardown_ctrl(struct nvme_ctrl *ctrl, bool shutdown)
{
 cancel_work_sync(&to_tcp_ctrl(ctrl)->err_work);
 cancel_delayed_work_sync(&to_tcp_ctrl(ctrl)->connect_work);

 nvme_tcp_teardown_io_queues(ctrl, shutdown);
 blk_mq_quiesce_queue(ctrl->admin_q);
 if (shutdown)
  nvme_shutdown_ctrl(ctrl);
 else
  nvme_disable_ctrl(ctrl);
 nvme_tcp_teardown_admin_queue(ctrl, shutdown);
}
