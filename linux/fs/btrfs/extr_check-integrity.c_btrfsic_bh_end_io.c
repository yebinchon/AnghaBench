
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct buffer_head {int (* b_end_io ) (struct buffer_head*,int) ;scalar_t__ b_private; } ;
struct btrfsic_dev_state {int last_flush_gen; int name; TYPE_2__* state; } ;
struct TYPE_3__ {int (* bh ) (struct buffer_head*,int) ;} ;
struct btrfsic_block {int iodone_w_error; int submit_bio_bh_rw; int is_iodone; TYPE_1__ orig_bio_bh_end_io; scalar_t__ orig_bio_bh_private; scalar_t__ flush_gen; int mirror_num; int dev_bytenr; struct btrfsic_dev_state* dev_state; int logical_bytenr; } ;
struct TYPE_4__ {int print_mask; } ;


 int BTRFSIC_PRINT_MASK_END_IO_BIO_BH ;
 int BUG_ON (int) ;
 int REQ_FUA ;
 int REQ_PREFLUSH ;
 int btrfsic_get_block_type (TYPE_2__*,struct btrfsic_block*) ;
 int pr_info (char*,int,int ,...) ;
 int stub1 (struct buffer_head*,int) ;

__attribute__((used)) static void btrfsic_bh_end_io(struct buffer_head *bh, int uptodate)
{
 struct btrfsic_block *block = (struct btrfsic_block *)bh->b_private;
 int iodone_w_error = !uptodate;
 struct btrfsic_dev_state *dev_state;

 BUG_ON(((void*)0) == block);
 dev_state = block->dev_state;
 if ((dev_state->state->print_mask & BTRFSIC_PRINT_MASK_END_IO_BIO_BH))
  pr_info("bh_end_io(error=%d) for %c @%llu (%s/%llu/%d)\n",
         iodone_w_error,
         btrfsic_get_block_type(dev_state->state, block),
         block->logical_bytenr, block->dev_state->name,
         block->dev_bytenr, block->mirror_num);

 block->iodone_w_error = iodone_w_error;
 if (block->submit_bio_bh_rw & REQ_PREFLUSH) {
  dev_state->last_flush_gen++;
  if ((dev_state->state->print_mask &
       BTRFSIC_PRINT_MASK_END_IO_BIO_BH))
   pr_info("bh_end_io() new %s flush_gen=%llu\n",
          dev_state->name, dev_state->last_flush_gen);
 }
 if (block->submit_bio_bh_rw & REQ_FUA)
  block->flush_gen = 0;

 bh->b_private = block->orig_bio_bh_private;
 bh->b_end_io = block->orig_bio_bh_end_io.bh;
 block->is_iodone = 1;
 bh->b_end_io(bh, uptodate);
}
