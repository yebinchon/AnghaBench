
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct scsi_disk {int max_ws_blocks; unsigned int physical_block_size; TYPE_2__* device; int zeroing_mode; scalar_t__ lbpws10; scalar_t__ lbprz; scalar_t__ lbpws; scalar_t__ ws10; scalar_t__ ws16; TYPE_1__* disk; } ;
struct request_queue {int dummy; } ;
struct TYPE_4__ {unsigned int sector_size; int no_write_same; scalar_t__ no_report_opcodes; } ;
struct TYPE_3__ {struct request_queue* queue; } ;


 int SD_MAX_WS10_BLOCKS ;
 scalar_t__ SD_MAX_WS16_BLOCKS ;
 int SD_ZERO_WRITE ;
 int SD_ZERO_WS ;
 int SD_ZERO_WS10_UNMAP ;
 int SD_ZERO_WS16_UNMAP ;
 int blk_queue_max_write_same_sectors (struct request_queue*,unsigned int) ;
 int blk_queue_max_write_zeroes_sectors (struct request_queue*,unsigned int) ;
 int bytes_to_logical (TYPE_2__*,unsigned int) ;
 void* min_not_zero (int,int ) ;
 int round_down (int,int ) ;

__attribute__((used)) static void sd_config_write_same(struct scsi_disk *sdkp)
{
 struct request_queue *q = sdkp->disk->queue;
 unsigned int logical_block_size = sdkp->device->sector_size;

 if (sdkp->device->no_write_same) {
  sdkp->max_ws_blocks = 0;
  goto out;
 }






 if (sdkp->max_ws_blocks > SD_MAX_WS10_BLOCKS)
  sdkp->max_ws_blocks = min_not_zero(sdkp->max_ws_blocks,
         (u32)SD_MAX_WS16_BLOCKS);
 else if (sdkp->ws16 || sdkp->ws10 || sdkp->device->no_report_opcodes)
  sdkp->max_ws_blocks = min_not_zero(sdkp->max_ws_blocks,
         (u32)SD_MAX_WS10_BLOCKS);
 else {
  sdkp->device->no_write_same = 1;
  sdkp->max_ws_blocks = 0;
 }

 if (sdkp->lbprz && sdkp->lbpws)
  sdkp->zeroing_mode = SD_ZERO_WS16_UNMAP;
 else if (sdkp->lbprz && sdkp->lbpws10)
  sdkp->zeroing_mode = SD_ZERO_WS10_UNMAP;
 else if (sdkp->max_ws_blocks)
  sdkp->zeroing_mode = SD_ZERO_WS;
 else
  sdkp->zeroing_mode = SD_ZERO_WRITE;

 if (sdkp->max_ws_blocks &&
     sdkp->physical_block_size > logical_block_size) {
  sdkp->max_ws_blocks =
   round_down(sdkp->max_ws_blocks,
       bytes_to_logical(sdkp->device,
          sdkp->physical_block_size));
 }

out:
 blk_queue_max_write_same_sectors(q, sdkp->max_ws_blocks *
      (logical_block_size >> 9));
 blk_queue_max_write_zeroes_sectors(q, sdkp->max_ws_blocks *
      (logical_block_size >> 9));
}
