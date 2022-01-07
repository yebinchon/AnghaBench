
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct scsi_disk {unsigned int unmap_alignment; unsigned int unmap_granularity; unsigned int provisioning_mode; unsigned int max_unmap_blocks; unsigned int max_ws_blocks; TYPE_3__* device; int physical_block_size; TYPE_1__* disk; } ;
struct TYPE_5__ {unsigned int discard_alignment; int discard_granularity; } ;
struct request_queue {TYPE_2__ limits; } ;
struct TYPE_6__ {unsigned int sector_size; int unmap_limit_for_ws; } ;
struct TYPE_4__ {struct request_queue* queue; } ;


 int QUEUE_FLAG_DISCARD ;






 int SD_MAX_WS10_BLOCKS ;
 int SD_MAX_WS16_BLOCKS ;
 int blk_queue_flag_clear (int ,struct request_queue*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 int blk_queue_max_discard_sectors (struct request_queue*,unsigned int) ;
 int max (int ,unsigned int) ;
 unsigned int min_not_zero (unsigned int,int ) ;

__attribute__((used)) static void sd_config_discard(struct scsi_disk *sdkp, unsigned int mode)
{
 struct request_queue *q = sdkp->disk->queue;
 unsigned int logical_block_size = sdkp->device->sector_size;
 unsigned int max_blocks = 0;

 q->limits.discard_alignment =
  sdkp->unmap_alignment * logical_block_size;
 q->limits.discard_granularity =
  max(sdkp->physical_block_size,
      sdkp->unmap_granularity * logical_block_size);
 sdkp->provisioning_mode = mode;

 switch (mode) {

 case 132:
 case 133:
  blk_queue_max_discard_sectors(q, 0);
  blk_queue_flag_clear(QUEUE_FLAG_DISCARD, q);
  return;

 case 131:
  max_blocks = min_not_zero(sdkp->max_unmap_blocks,
       (u32)SD_MAX_WS16_BLOCKS);
  break;

 case 129:
  if (sdkp->device->unmap_limit_for_ws)
   max_blocks = sdkp->max_unmap_blocks;
  else
   max_blocks = sdkp->max_ws_blocks;

  max_blocks = min_not_zero(max_blocks, (u32)SD_MAX_WS16_BLOCKS);
  break;

 case 130:
  if (sdkp->device->unmap_limit_for_ws)
   max_blocks = sdkp->max_unmap_blocks;
  else
   max_blocks = sdkp->max_ws_blocks;

  max_blocks = min_not_zero(max_blocks, (u32)SD_MAX_WS10_BLOCKS);
  break;

 case 128:
  max_blocks = min_not_zero(sdkp->max_ws_blocks,
       (u32)SD_MAX_WS10_BLOCKS);
  break;
 }

 blk_queue_max_discard_sectors(q, max_blocks * (logical_block_size >> 9));
 blk_queue_flag_set(QUEUE_FLAG_DISCARD, q);
}
