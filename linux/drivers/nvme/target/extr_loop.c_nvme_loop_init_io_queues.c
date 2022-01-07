
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvmf_ctrl_options {int nr_io_queues; } ;
struct TYPE_4__ {int queue_count; int device; struct nvmf_ctrl_options* opts; } ;
struct nvme_loop_ctrl {TYPE_2__ ctrl; TYPE_1__* queues; } ;
struct TYPE_3__ {int nvme_sq; struct nvme_loop_ctrl* ctrl; } ;


 int dev_info (int ,char*,unsigned int) ;
 unsigned int min (int ,int ) ;
 int num_online_cpus () ;
 int nvme_loop_destroy_io_queues (struct nvme_loop_ctrl*) ;
 int nvme_set_queue_count (TYPE_2__*,unsigned int*) ;
 int nvmet_sq_init (int *) ;

__attribute__((used)) static int nvme_loop_init_io_queues(struct nvme_loop_ctrl *ctrl)
{
 struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
 unsigned int nr_io_queues;
 int ret, i;

 nr_io_queues = min(opts->nr_io_queues, num_online_cpus());
 ret = nvme_set_queue_count(&ctrl->ctrl, &nr_io_queues);
 if (ret || !nr_io_queues)
  return ret;

 dev_info(ctrl->ctrl.device, "creating %d I/O queues.\n", nr_io_queues);

 for (i = 1; i <= nr_io_queues; i++) {
  ctrl->queues[i].ctrl = ctrl;
  ret = nvmet_sq_init(&ctrl->queues[i].nvme_sq);
  if (ret)
   goto out_destroy_queues;

  ctrl->ctrl.queue_count++;
 }

 return 0;

out_destroy_queues:
 nvme_loop_destroy_io_queues(ctrl);
 return ret;
}
