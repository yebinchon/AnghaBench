
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btrfsic_state {int print_mask; int block_hashtable; int all_blocks_list; } ;
struct btrfsic_dev_state {int name; } ;
struct btrfsic_block_data_ctx {int start; int dev_bytenr; TYPE_1__* dev; } ;
struct btrfsic_block {int is_metadata; int is_iodone; int never_written; int mirror_num; int all_blocks_node; int dev_bytenr; int logical_bytenr; struct btrfsic_dev_state* dev_state; } ;
struct TYPE_4__ {int bd_dev; } ;
struct TYPE_3__ {TYPE_2__* bdev; } ;


 int BTRFSIC_PRINT_MASK_VERBOSE ;
 struct btrfsic_block* btrfsic_block_alloc () ;
 int btrfsic_block_free (struct btrfsic_block*) ;
 int btrfsic_block_hashtable_add (struct btrfsic_block*,int *) ;
 struct btrfsic_block* btrfsic_block_hashtable_lookup (TYPE_2__*,int ,int *) ;
 struct btrfsic_dev_state* btrfsic_dev_state_lookup (int ) ;
 int btrfsic_get_block_type (struct btrfsic_state*,struct btrfsic_block*) ;
 int list_add (int *,int *) ;
 int pr_info (char*,...) ;

__attribute__((used)) static struct btrfsic_block *btrfsic_block_lookup_or_add(
  struct btrfsic_state *state,
  struct btrfsic_block_data_ctx *block_ctx,
  const char *additional_string,
  int is_metadata,
  int is_iodone,
  int never_written,
  int mirror_num,
  int *was_created)
{
 struct btrfsic_block *block;

 block = btrfsic_block_hashtable_lookup(block_ctx->dev->bdev,
            block_ctx->dev_bytenr,
            &state->block_hashtable);
 if (((void*)0) == block) {
  struct btrfsic_dev_state *dev_state;

  block = btrfsic_block_alloc();
  if (((void*)0) == block) {
   pr_info("btrfsic: error, kmalloc failed!\n");
   return ((void*)0);
  }
  dev_state = btrfsic_dev_state_lookup(block_ctx->dev->bdev->bd_dev);
  if (((void*)0) == dev_state) {
   pr_info("btrfsic: error, lookup dev_state failed!\n");
   btrfsic_block_free(block);
   return ((void*)0);
  }
  block->dev_state = dev_state;
  block->dev_bytenr = block_ctx->dev_bytenr;
  block->logical_bytenr = block_ctx->start;
  block->is_metadata = is_metadata;
  block->is_iodone = is_iodone;
  block->never_written = never_written;
  block->mirror_num = mirror_num;
  if (state->print_mask & BTRFSIC_PRINT_MASK_VERBOSE)
   pr_info("New %s%c-block @%llu (%s/%llu/%d)\n",
          additional_string,
          btrfsic_get_block_type(state, block),
          block->logical_bytenr, dev_state->name,
          block->dev_bytenr, mirror_num);
  list_add(&block->all_blocks_node, &state->all_blocks_list);
  btrfsic_block_hashtable_add(block, &state->block_hashtable);
  if (((void*)0) != was_created)
   *was_created = 1;
 } else {
  if (((void*)0) != was_created)
   *was_created = 0;
 }

 return block;
}
