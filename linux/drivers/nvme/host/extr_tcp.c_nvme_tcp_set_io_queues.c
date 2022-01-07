
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmf_ctrl_options {unsigned int nr_write_queues; unsigned int nr_io_queues; unsigned int nr_poll_queues; } ;
struct nvme_tcp_ctrl {unsigned int* io_queues; } ;
struct nvme_ctrl {struct nvmf_ctrl_options* opts; } ;


 size_t HCTX_TYPE_DEFAULT ;
 size_t HCTX_TYPE_POLL ;
 size_t HCTX_TYPE_READ ;
 void* min (unsigned int,unsigned int) ;
 struct nvme_tcp_ctrl* to_tcp_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_tcp_set_io_queues(struct nvme_ctrl *nctrl,
  unsigned int nr_io_queues)
{
 struct nvme_tcp_ctrl *ctrl = to_tcp_ctrl(nctrl);
 struct nvmf_ctrl_options *opts = nctrl->opts;

 if (opts->nr_write_queues && opts->nr_io_queues < nr_io_queues) {





  ctrl->io_queues[HCTX_TYPE_READ] = opts->nr_io_queues;
  nr_io_queues -= ctrl->io_queues[HCTX_TYPE_READ];
  ctrl->io_queues[HCTX_TYPE_DEFAULT] =
   min(opts->nr_write_queues, nr_io_queues);
  nr_io_queues -= ctrl->io_queues[HCTX_TYPE_DEFAULT];
 } else {





  ctrl->io_queues[HCTX_TYPE_DEFAULT] =
   min(opts->nr_io_queues, nr_io_queues);
  nr_io_queues -= ctrl->io_queues[HCTX_TYPE_DEFAULT];
 }

 if (opts->nr_poll_queues && nr_io_queues) {

  ctrl->io_queues[HCTX_TYPE_POLL] =
   min(opts->nr_poll_queues, nr_io_queues);
 }
}
