
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct streams_directive_params {int sgs; int sws; } ;
struct nvme_ns {unsigned int sws; int sgs; int lba_shift; int queue; TYPE_1__* head; } ;
struct nvme_ctrl {int nr_streams; } ;
struct TYPE_2__ {int ns_id; } ;


 int blk_queue_io_min (int ,unsigned int) ;
 int blk_queue_io_opt (int ,unsigned int) ;
 int le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;
 int nvme_get_stream_params (struct nvme_ctrl*,struct streams_directive_params*,int ) ;

__attribute__((used)) static int nvme_setup_streams_ns(struct nvme_ctrl *ctrl, struct nvme_ns *ns)
{
 struct streams_directive_params s;
 int ret;

 if (!ctrl->nr_streams)
  return 0;

 ret = nvme_get_stream_params(ctrl, &s, ns->head->ns_id);
 if (ret)
  return ret;

 ns->sws = le32_to_cpu(s.sws);
 ns->sgs = le16_to_cpu(s.sgs);

 if (ns->sws) {
  unsigned int bs = 1 << ns->lba_shift;

  blk_queue_io_min(ns->queue, bs * ns->sws);
  if (ns->sgs)
   blk_queue_io_opt(ns->queue, bs * ns->sws * ns->sgs);
 }

 return 0;
}
