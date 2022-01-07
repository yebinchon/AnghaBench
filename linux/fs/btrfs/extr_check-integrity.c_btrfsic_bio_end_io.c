
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btrfsic_dev_state {int last_flush_gen; int name; TYPE_2__* state; } ;
struct TYPE_3__ {int (* bio ) (struct bio*) ;} ;
struct btrfsic_block {int iodone_w_error; int submit_bio_bh_rw; int is_iodone; scalar_t__ flush_gen; struct btrfsic_block* next_in_same_bio; int mirror_num; int dev_bytenr; int logical_bytenr; struct btrfsic_dev_state* dev_state; TYPE_1__ orig_bio_bh_end_io; scalar_t__ orig_bio_bh_private; } ;
struct bio {int (* bi_end_io ) (struct bio*) ;scalar_t__ bi_status; scalar_t__ bi_private; } ;
struct TYPE_4__ {int print_mask; } ;


 int BTRFSIC_PRINT_MASK_END_IO_BIO_BH ;
 int BUG_ON (int) ;
 int REQ_FUA ;
 int REQ_PREFLUSH ;
 int btrfsic_get_block_type (TYPE_2__*,struct btrfsic_block*) ;
 int pr_info (char*,int ,int ,...) ;
 int stub1 (struct bio*) ;

__attribute__((used)) static void btrfsic_bio_end_io(struct bio *bp)
{
 struct btrfsic_block *block = (struct btrfsic_block *)bp->bi_private;
 int iodone_w_error;



 iodone_w_error = 0;
 if (bp->bi_status)
  iodone_w_error = 1;

 BUG_ON(((void*)0) == block);
 bp->bi_private = block->orig_bio_bh_private;
 bp->bi_end_io = block->orig_bio_bh_end_io.bio;

 do {
  struct btrfsic_block *next_block;
  struct btrfsic_dev_state *const dev_state = block->dev_state;

  if ((dev_state->state->print_mask &
       BTRFSIC_PRINT_MASK_END_IO_BIO_BH))
   pr_info("bio_end_io(err=%d) for %c @%llu (%s/%llu/%d)\n",
          bp->bi_status,
          btrfsic_get_block_type(dev_state->state, block),
          block->logical_bytenr, dev_state->name,
          block->dev_bytenr, block->mirror_num);
  next_block = block->next_in_same_bio;
  block->iodone_w_error = iodone_w_error;
  if (block->submit_bio_bh_rw & REQ_PREFLUSH) {
   dev_state->last_flush_gen++;
   if ((dev_state->state->print_mask &
        BTRFSIC_PRINT_MASK_END_IO_BIO_BH))
    pr_info("bio_end_io() new %s flush_gen=%llu\n",
           dev_state->name,
           dev_state->last_flush_gen);
  }
  if (block->submit_bio_bh_rw & REQ_FUA)
   block->flush_gen = 0;

  block->is_iodone = 1;
  block = next_block;
 } while (((void*)0) != block);

 bp->bi_end_io(bp);
}
