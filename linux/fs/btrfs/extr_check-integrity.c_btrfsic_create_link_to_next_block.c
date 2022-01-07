
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfsic_state {int print_mask; int block_link_hashtable; int metablock_size; struct btrfs_fs_info* fs_info; } ;
struct btrfsic_block_link {int ref_cnt; int parent_generation; int node_ref_from; int node_ref_to; struct btrfsic_block* block_ref_from; struct btrfsic_block* block_ref_to; } ;
struct btrfsic_block_data_ctx {scalar_t__ len; int dev_bytenr; TYPE_1__* dev; } ;
struct btrfs_disk_key {int dummy; } ;
struct btrfsic_block {int logical_bytenr; int mirror_num; int ref_from_list; int ref_to_list; struct btrfs_disk_key disk_key; int is_metadata; int generation; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {int bdev; int name; } ;


 int BTRFSIC_GENERATION_UNKNOWN ;
 int BTRFSIC_PRINT_MASK_NUM_COPIES ;
 int BTRFSIC_PRINT_MASK_VERBOSE ;
 int btrfs_num_copies (struct btrfs_fs_info*,int,int ) ;
 struct btrfsic_block_link* btrfsic_block_link_alloc () ;
 int btrfsic_block_link_hashtable_add (struct btrfsic_block_link*,int *) ;
 struct btrfsic_block_link* btrfsic_block_link_hashtable_lookup (int ,int ,int ,int ,int *) ;
 struct btrfsic_block* btrfsic_block_lookup_or_add (struct btrfsic_state*,struct btrfsic_block_data_ctx*,char*,int,int,int,int,int*) ;
 int btrfsic_get_block_type (struct btrfsic_state*,struct btrfsic_block*) ;
 int btrfsic_map_block (struct btrfsic_state*,int,int ,struct btrfsic_block_data_ctx*,int) ;
 int btrfsic_print_add_link (struct btrfsic_state*,struct btrfsic_block_link*) ;
 int btrfsic_read_block (struct btrfsic_state*,struct btrfsic_block_data_ctx*) ;
 int btrfsic_release_block_ctx (struct btrfsic_block_data_ctx*) ;
 int list_add (int *,int *) ;
 int pr_info (char*,...) ;

__attribute__((used)) static int btrfsic_create_link_to_next_block(
  struct btrfsic_state *state,
  struct btrfsic_block *block,
  struct btrfsic_block_data_ctx *block_ctx,
  u64 next_bytenr,
  int limit_nesting,
  struct btrfsic_block_data_ctx *next_block_ctx,
  struct btrfsic_block **next_blockp,
  int force_iodone_flag,
  int *num_copiesp, int *mirror_nump,
  struct btrfs_disk_key *disk_key,
  u64 parent_generation)
{
 struct btrfs_fs_info *fs_info = state->fs_info;
 struct btrfsic_block *next_block = ((void*)0);
 int ret;
 struct btrfsic_block_link *l;
 int did_alloc_block_link;
 int block_was_created;

 *next_blockp = ((void*)0);
 if (0 == *num_copiesp) {
  *num_copiesp = btrfs_num_copies(fs_info, next_bytenr,
      state->metablock_size);
  if (state->print_mask & BTRFSIC_PRINT_MASK_NUM_COPIES)
   pr_info("num_copies(log_bytenr=%llu) = %d\n",
          next_bytenr, *num_copiesp);
  *mirror_nump = 1;
 }

 if (*mirror_nump > *num_copiesp)
  return 0;

 if (state->print_mask & BTRFSIC_PRINT_MASK_VERBOSE)
  pr_info("btrfsic_create_link_to_next_block(mirror_num=%d)\n",
         *mirror_nump);
 ret = btrfsic_map_block(state, next_bytenr,
    state->metablock_size,
    next_block_ctx, *mirror_nump);
 if (ret) {
  pr_info("btrfsic: btrfsic_map_block(@%llu, mirror=%d) failed!\n",
         next_bytenr, *mirror_nump);
  btrfsic_release_block_ctx(next_block_ctx);
  *next_blockp = ((void*)0);
  return -1;
 }

 next_block = btrfsic_block_lookup_or_add(state,
       next_block_ctx, "referenced ",
       1, force_iodone_flag,
       !force_iodone_flag,
       *mirror_nump,
       &block_was_created);
 if (((void*)0) == next_block) {
  btrfsic_release_block_ctx(next_block_ctx);
  *next_blockp = ((void*)0);
  return -1;
 }
 if (block_was_created) {
  l = ((void*)0);
  next_block->generation = BTRFSIC_GENERATION_UNKNOWN;
 } else {
  if (state->print_mask & BTRFSIC_PRINT_MASK_VERBOSE) {
   if (next_block->logical_bytenr != next_bytenr &&
       !(!next_block->is_metadata &&
         0 == next_block->logical_bytenr))
    pr_info("Referenced block @%llu (%s/%llu/%d) found in hash table, %c, bytenr mismatch (!= stored %llu).\n",
           next_bytenr, next_block_ctx->dev->name,
           next_block_ctx->dev_bytenr, *mirror_nump,
           btrfsic_get_block_type(state,
             next_block),
           next_block->logical_bytenr);
   else
    pr_info("Referenced block @%llu (%s/%llu/%d) found in hash table, %c.\n",
           next_bytenr, next_block_ctx->dev->name,
           next_block_ctx->dev_bytenr, *mirror_nump,
           btrfsic_get_block_type(state,
             next_block));
  }
  next_block->logical_bytenr = next_bytenr;

  next_block->mirror_num = *mirror_nump;
  l = btrfsic_block_link_hashtable_lookup(
    next_block_ctx->dev->bdev,
    next_block_ctx->dev_bytenr,
    block_ctx->dev->bdev,
    block_ctx->dev_bytenr,
    &state->block_link_hashtable);
 }

 next_block->disk_key = *disk_key;
 if (((void*)0) == l) {
  l = btrfsic_block_link_alloc();
  if (((void*)0) == l) {
   pr_info("btrfsic: error, kmalloc failed!\n");
   btrfsic_release_block_ctx(next_block_ctx);
   *next_blockp = ((void*)0);
   return -1;
  }

  did_alloc_block_link = 1;
  l->block_ref_to = next_block;
  l->block_ref_from = block;
  l->ref_cnt = 1;
  l->parent_generation = parent_generation;

  if (state->print_mask & BTRFSIC_PRINT_MASK_VERBOSE)
   btrfsic_print_add_link(state, l);

  list_add(&l->node_ref_to, &block->ref_to_list);
  list_add(&l->node_ref_from, &next_block->ref_from_list);

  btrfsic_block_link_hashtable_add(l,
       &state->block_link_hashtable);
 } else {
  did_alloc_block_link = 0;
  if (0 == limit_nesting) {
   l->ref_cnt++;
   l->parent_generation = parent_generation;
   if (state->print_mask & BTRFSIC_PRINT_MASK_VERBOSE)
    btrfsic_print_add_link(state, l);
  }
 }

 if (limit_nesting > 0 && did_alloc_block_link) {
  ret = btrfsic_read_block(state, next_block_ctx);
  if (ret < (int)next_block_ctx->len) {
   pr_info("btrfsic: read block @logical %llu failed!\n",
          next_bytenr);
   btrfsic_release_block_ctx(next_block_ctx);
   *next_blockp = ((void*)0);
   return -1;
  }

  *next_blockp = next_block;
 } else {
  *next_blockp = ((void*)0);
 }
 (*mirror_nump)++;

 return 0;
}
