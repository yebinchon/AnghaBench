
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct buffer_head {scalar_t__ b_size; int b_blocknr; int b_end_io; struct btrfsic_block* b_private; TYPE_1__* b_bdev; int b_data; } ;
struct TYPE_6__ {int bh; } ;
struct btrfsic_block {int submit_bio_bh_rw; int * next_in_same_bio; TYPE_3__ orig_bio_bh_end_io; struct btrfsic_block* orig_bio_bh_private; scalar_t__ flush_gen; scalar_t__ iodone_w_error; scalar_t__ never_written; scalar_t__ is_iodone; } ;
struct btrfsic_dev_state {scalar_t__ last_flush_gen; struct btrfsic_block dummy_block_for_bio_bh_flush; int name; TYPE_2__* state; } ;
struct TYPE_5__ {int print_mask; } ;
struct TYPE_4__ {int bd_dev; } ;


 int BTRFSIC_PRINT_MASK_SUBMIT_BIO_BH ;
 int BTRFSIC_PRINT_MASK_VERBOSE ;
 int BTRFS_BDEV_BLOCKSIZE ;
 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 int btrfsic_bh_end_io ;
 struct btrfsic_dev_state* btrfsic_dev_state_lookup (int ) ;
 int btrfsic_is_initialized ;
 int btrfsic_mutex ;
 int btrfsic_process_written_block (struct btrfsic_dev_state*,int,int *,int,int *,int *,struct buffer_head*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,int,...) ;
 int submit_bh (int,int,struct buffer_head*) ;

int btrfsic_submit_bh(int op, int op_flags, struct buffer_head *bh)
{
 struct btrfsic_dev_state *dev_state;

 if (!btrfsic_is_initialized)
  return submit_bh(op, op_flags, bh);

 mutex_lock(&btrfsic_mutex);


 dev_state = btrfsic_dev_state_lookup(bh->b_bdev->bd_dev);


 if (((void*)0) != dev_state &&
     (op == REQ_OP_WRITE) && bh->b_size > 0) {
  u64 dev_bytenr;

  dev_bytenr = BTRFS_BDEV_BLOCKSIZE * bh->b_blocknr;
  if (dev_state->state->print_mask &
      BTRFSIC_PRINT_MASK_SUBMIT_BIO_BH)
   pr_info("submit_bh(op=0x%x,0x%x, blocknr=%llu (bytenr %llu), size=%zu, data=%p, bdev=%p)\n",
          op, op_flags, (unsigned long long)bh->b_blocknr,
          dev_bytenr, bh->b_size, bh->b_data, bh->b_bdev);
  btrfsic_process_written_block(dev_state, dev_bytenr,
           &bh->b_data, 1, ((void*)0),
           ((void*)0), bh, op_flags);
 } else if (((void*)0) != dev_state && (op_flags & REQ_PREFLUSH)) {
  if (dev_state->state->print_mask &
      BTRFSIC_PRINT_MASK_SUBMIT_BIO_BH)
   pr_info("submit_bh(op=0x%x,0x%x FLUSH, bdev=%p)\n",
          op, op_flags, bh->b_bdev);
  if (!dev_state->dummy_block_for_bio_bh_flush.is_iodone) {
   if ((dev_state->state->print_mask &
        (BTRFSIC_PRINT_MASK_SUBMIT_BIO_BH |
         BTRFSIC_PRINT_MASK_VERBOSE)))
    pr_info("btrfsic_submit_bh(%s) with FLUSH but dummy block already in use (ignored)!\n",
           dev_state->name);
  } else {
   struct btrfsic_block *const block =
    &dev_state->dummy_block_for_bio_bh_flush;

   block->is_iodone = 0;
   block->never_written = 0;
   block->iodone_w_error = 0;
   block->flush_gen = dev_state->last_flush_gen + 1;
   block->submit_bio_bh_rw = op_flags;
   block->orig_bio_bh_private = bh->b_private;
   block->orig_bio_bh_end_io.bh = bh->b_end_io;
   block->next_in_same_bio = ((void*)0);
   bh->b_private = block;
   bh->b_end_io = btrfsic_bh_end_io;
  }
 }
 mutex_unlock(&btrfsic_mutex);
 return submit_bh(op, op_flags, bh);
}
