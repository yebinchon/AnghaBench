
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int discard_granularity; scalar_t__ discard_alignment; } ;
struct request_queue {TYPE_1__ limits; } ;
struct nvme_ns {int sws; int sgs; struct nvme_ctrl* ctrl; } ;
struct nvme_dsm_range {int dummy; } ;
struct nvme_ctrl {int oncs; int quirks; scalar_t__ nr_streams; } ;
struct gendisk {struct request_queue* queue; } ;


 int BUILD_BUG_ON (int) ;
 int NVME_CTRL_ONCS_DSM ;
 int NVME_DSM_MAX_RANGES ;
 int NVME_QUIRK_DEALLOCATE_ZEROES ;
 int PAGE_SIZE ;
 int QUEUE_FLAG_DISCARD ;
 int UINT_MAX ;
 int blk_queue_flag_clear (int ,struct request_queue*) ;
 scalar_t__ blk_queue_flag_test_and_set (int ,struct request_queue*) ;
 int blk_queue_max_discard_sectors (struct request_queue*,int ) ;
 int blk_queue_max_discard_segments (struct request_queue*,int) ;
 int blk_queue_max_write_zeroes_sectors (struct request_queue*,int ) ;
 int queue_logical_block_size (struct request_queue*) ;

__attribute__((used)) static void nvme_config_discard(struct gendisk *disk, struct nvme_ns *ns)
{
 struct nvme_ctrl *ctrl = ns->ctrl;
 struct request_queue *queue = disk->queue;
 u32 size = queue_logical_block_size(queue);

 if (!(ctrl->oncs & NVME_CTRL_ONCS_DSM)) {
  blk_queue_flag_clear(QUEUE_FLAG_DISCARD, queue);
  return;
 }

 if (ctrl->nr_streams && ns->sws && ns->sgs)
  size *= ns->sws * ns->sgs;

 BUILD_BUG_ON(PAGE_SIZE / sizeof(struct nvme_dsm_range) <
   NVME_DSM_MAX_RANGES);

 queue->limits.discard_alignment = 0;
 queue->limits.discard_granularity = size;


 if (blk_queue_flag_test_and_set(QUEUE_FLAG_DISCARD, queue))
  return;

 blk_queue_max_discard_sectors(queue, UINT_MAX);
 blk_queue_max_discard_segments(queue, NVME_DSM_MAX_RANGES);

 if (ctrl->quirks & NVME_QUIRK_DEALLOCATE_ZEROES)
  blk_queue_max_write_zeroes_sectors(queue, UINT_MAX);
}
