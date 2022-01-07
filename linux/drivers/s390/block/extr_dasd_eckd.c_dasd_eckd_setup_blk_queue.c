
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_dev_sectors; } ;
struct request_queue {TYPE_1__ limits; } ;
struct dasd_device {int features; } ;
struct dasd_block {unsigned int bp_block; int s2b_shift; struct dasd_device* base; struct request_queue* request_queue; } ;


 int DASD_ECKD_MAX_BLOCKS ;
 int DASD_ECKD_MAX_BLOCKS_RAW ;
 int DASD_FEATURE_USERAW ;
 scalar_t__ PAGE_SIZE ;
 int QUEUE_FLAG_NONROT ;
 int USHRT_MAX ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 int blk_queue_logical_block_size (struct request_queue*,unsigned int) ;
 int blk_queue_max_hw_sectors (struct request_queue*,int) ;
 int blk_queue_max_segment_size (struct request_queue*,scalar_t__) ;
 int blk_queue_max_segments (struct request_queue*,int ) ;
 int blk_queue_segment_boundary (struct request_queue*,scalar_t__) ;

__attribute__((used)) static void dasd_eckd_setup_blk_queue(struct dasd_block *block)
{
 unsigned int logical_block_size = block->bp_block;
 struct request_queue *q = block->request_queue;
 struct dasd_device *device = block->base;
 int max;

 if (device->features & DASD_FEATURE_USERAW) {







  max = DASD_ECKD_MAX_BLOCKS_RAW << block->s2b_shift;
 } else {
  max = DASD_ECKD_MAX_BLOCKS << block->s2b_shift;
 }
 blk_queue_flag_set(QUEUE_FLAG_NONROT, q);
 q->limits.max_dev_sectors = max;
 blk_queue_logical_block_size(q, logical_block_size);
 blk_queue_max_hw_sectors(q, max);
 blk_queue_max_segments(q, USHRT_MAX);

 blk_queue_max_segment_size(q, PAGE_SIZE);
 blk_queue_segment_boundary(q, PAGE_SIZE - 1);
}
