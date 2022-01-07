
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_dev_sectors; unsigned int discard_granularity; scalar_t__ discard_alignment; } ;
struct request_queue {TYPE_1__ limits; } ;
struct dasd_block {unsigned int bp_block; int s2b_shift; struct request_queue* request_queue; } ;


 unsigned int ALIGN_DOWN (unsigned int,scalar_t__) ;
 int DASD_FBA_MAX_BLOCKS ;
 scalar_t__ PAGE_SIZE ;
 int QUEUE_FLAG_DISCARD ;
 int QUEUE_FLAG_NONROT ;
 unsigned int USHRT_MAX ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 int blk_queue_logical_block_size (struct request_queue*,unsigned int) ;
 int blk_queue_max_discard_sectors (struct request_queue*,unsigned int) ;
 int blk_queue_max_hw_sectors (struct request_queue*,int) ;
 int blk_queue_max_segment_size (struct request_queue*,scalar_t__) ;
 int blk_queue_max_segments (struct request_queue*,unsigned int) ;
 int blk_queue_max_write_zeroes_sectors (struct request_queue*,unsigned int) ;
 int blk_queue_segment_boundary (struct request_queue*,scalar_t__) ;

__attribute__((used)) static void dasd_fba_setup_blk_queue(struct dasd_block *block)
{
 unsigned int logical_block_size = block->bp_block;
 struct request_queue *q = block->request_queue;
 unsigned int max_bytes, max_discard_sectors;
 int max;

 max = DASD_FBA_MAX_BLOCKS << block->s2b_shift;
 blk_queue_flag_set(QUEUE_FLAG_NONROT, q);
 q->limits.max_dev_sectors = max;
 blk_queue_logical_block_size(q, logical_block_size);
 blk_queue_max_hw_sectors(q, max);
 blk_queue_max_segments(q, USHRT_MAX);

 blk_queue_max_segment_size(q, PAGE_SIZE);
 blk_queue_segment_boundary(q, PAGE_SIZE - 1);

 q->limits.discard_granularity = logical_block_size;
 q->limits.discard_alignment = PAGE_SIZE;


 max_bytes = USHRT_MAX * logical_block_size;
 max_bytes = ALIGN_DOWN(max_bytes, PAGE_SIZE);
 max_discard_sectors = max_bytes / logical_block_size;

 blk_queue_max_discard_sectors(q, max_discard_sectors);
 blk_queue_max_write_zeroes_sectors(q, max_discard_sectors);
 blk_queue_flag_set(QUEUE_FLAG_DISCARD, q);
}
