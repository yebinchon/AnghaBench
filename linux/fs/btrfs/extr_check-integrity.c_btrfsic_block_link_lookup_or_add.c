
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct btrfsic_state {int print_mask; int block_link_hashtable; } ;
struct btrfsic_block_link {int ref_cnt; void* parent_generation; int node_ref_from; int node_ref_to; struct btrfsic_block* block_ref_from; struct btrfsic_block* block_ref_to; } ;
struct btrfsic_block_data_ctx {int dev_bytenr; TYPE_1__* dev; } ;
struct btrfsic_block {int ref_from_list; int ref_to_list; int dev_bytenr; TYPE_2__* dev_state; } ;
struct TYPE_4__ {int bdev; } ;
struct TYPE_3__ {int bdev; } ;


 int BTRFSIC_PRINT_MASK_VERBOSE ;
 struct btrfsic_block_link* btrfsic_block_link_alloc () ;
 int btrfsic_block_link_hashtable_add (struct btrfsic_block_link*,int *) ;
 struct btrfsic_block_link* btrfsic_block_link_hashtable_lookup (int ,int ,int ,int ,int *) ;
 int btrfsic_print_add_link (struct btrfsic_state*,struct btrfsic_block_link*) ;
 int list_add (int *,int *) ;
 int pr_info (char*) ;

__attribute__((used)) static struct btrfsic_block_link *btrfsic_block_link_lookup_or_add(
  struct btrfsic_state *state,
  struct btrfsic_block_data_ctx *next_block_ctx,
  struct btrfsic_block *next_block,
  struct btrfsic_block *from_block,
  u64 parent_generation)
{
 struct btrfsic_block_link *l;

 l = btrfsic_block_link_hashtable_lookup(next_block_ctx->dev->bdev,
      next_block_ctx->dev_bytenr,
      from_block->dev_state->bdev,
      from_block->dev_bytenr,
      &state->block_link_hashtable);
 if (((void*)0) == l) {
  l = btrfsic_block_link_alloc();
  if (((void*)0) == l) {
   pr_info("btrfsic: error, kmalloc failed!\n");
   return ((void*)0);
  }

  l->block_ref_to = next_block;
  l->block_ref_from = from_block;
  l->ref_cnt = 1;
  l->parent_generation = parent_generation;

  if (state->print_mask & BTRFSIC_PRINT_MASK_VERBOSE)
   btrfsic_print_add_link(state, l);

  list_add(&l->node_ref_to, &from_block->ref_to_list);
  list_add(&l->node_ref_from, &next_block->ref_from_list);

  btrfsic_block_link_hashtable_add(l,
       &state->block_link_hashtable);
 } else {
  l->ref_cnt++;
  l->parent_generation = parent_generation;
  if (state->print_mask & BTRFSIC_PRINT_MASK_VERBOSE)
   btrfsic_print_add_link(state, l);
 }

 return l;
}
