
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tree_mod_root {int level; int logical; } ;
struct tree_mod_elem {scalar_t__ op; int generation; struct tree_mod_root old_root; } ;
struct extent_buffer {int start; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;


 int BTRFS_MIXED_BACKREF_REV ;
 scalar_t__ BTRFS_NODEPTRS_PER_BLOCK (struct btrfs_fs_info*) ;
 scalar_t__ IS_ERR (struct extent_buffer*) ;
 scalar_t__ MOD_LOG_KEY_REMOVE_WHILE_FREEING ;
 scalar_t__ MOD_LOG_ROOT_REPLACE ;
 scalar_t__ WARN_ON (int) ;
 struct tree_mod_elem* __tree_mod_log_oldest_root (struct extent_buffer*,int ) ;
 int __tree_mod_log_rewind (struct btrfs_fs_info*,struct extent_buffer*,int ,struct tree_mod_elem*) ;
 struct extent_buffer* alloc_dummy_extent_buffer (struct btrfs_fs_info*,int ) ;
 struct extent_buffer* btrfs_clone_extent_buffer (struct extent_buffer*) ;
 int btrfs_header_level (struct extent_buffer*) ;
 scalar_t__ btrfs_header_nritems (struct extent_buffer*) ;
 int btrfs_header_owner (struct extent_buffer*) ;
 struct extent_buffer* btrfs_read_lock_root_node (struct btrfs_root*) ;
 int btrfs_set_header_backref_rev (struct extent_buffer*,int ) ;
 int btrfs_set_header_bytenr (struct extent_buffer*,int ) ;
 int btrfs_set_header_generation (struct extent_buffer*,int ) ;
 int btrfs_set_header_level (struct extent_buffer*,int) ;
 int btrfs_set_header_owner (struct extent_buffer*,int ) ;
 int btrfs_set_lock_blocking_read (struct extent_buffer*) ;
 int btrfs_tree_read_lock (struct extent_buffer*) ;
 int btrfs_tree_read_unlock (struct extent_buffer*) ;
 int btrfs_tree_read_unlock_blocking (struct extent_buffer*) ;
 int btrfs_warn (struct btrfs_fs_info*,char*,int ) ;
 int extent_buffer_uptodate (struct extent_buffer*) ;
 int free_extent_buffer (struct extent_buffer*) ;
 struct extent_buffer* read_tree_block (struct btrfs_fs_info*,int ,int ,int,int *) ;
 struct tree_mod_elem* tree_mod_log_search (struct btrfs_fs_info*,int ,int ) ;

__attribute__((used)) static inline struct extent_buffer *
get_old_root(struct btrfs_root *root, u64 time_seq)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct tree_mod_elem *tm;
 struct extent_buffer *eb = ((void*)0);
 struct extent_buffer *eb_root;
 u64 eb_root_owner = 0;
 struct extent_buffer *old;
 struct tree_mod_root *old_root = ((void*)0);
 u64 old_generation = 0;
 u64 logical;
 int level;

 eb_root = btrfs_read_lock_root_node(root);
 tm = __tree_mod_log_oldest_root(eb_root, time_seq);
 if (!tm)
  return eb_root;

 if (tm->op == MOD_LOG_ROOT_REPLACE) {
  old_root = &tm->old_root;
  old_generation = tm->generation;
  logical = old_root->logical;
  level = old_root->level;
 } else {
  logical = eb_root->start;
  level = btrfs_header_level(eb_root);
 }

 tm = tree_mod_log_search(fs_info, logical, time_seq);
 if (old_root && tm && tm->op != MOD_LOG_KEY_REMOVE_WHILE_FREEING) {
  btrfs_tree_read_unlock(eb_root);
  free_extent_buffer(eb_root);
  old = read_tree_block(fs_info, logical, 0, level, ((void*)0));
  if (WARN_ON(IS_ERR(old) || !extent_buffer_uptodate(old))) {
   if (!IS_ERR(old))
    free_extent_buffer(old);
   btrfs_warn(fs_info,
       "failed to read tree block %llu from get_old_root",
       logical);
  } else {
   eb = btrfs_clone_extent_buffer(old);
   free_extent_buffer(old);
  }
 } else if (old_root) {
  eb_root_owner = btrfs_header_owner(eb_root);
  btrfs_tree_read_unlock(eb_root);
  free_extent_buffer(eb_root);
  eb = alloc_dummy_extent_buffer(fs_info, logical);
 } else {
  btrfs_set_lock_blocking_read(eb_root);
  eb = btrfs_clone_extent_buffer(eb_root);
  btrfs_tree_read_unlock_blocking(eb_root);
  free_extent_buffer(eb_root);
 }

 if (!eb)
  return ((void*)0);
 btrfs_tree_read_lock(eb);
 if (old_root) {
  btrfs_set_header_bytenr(eb, eb->start);
  btrfs_set_header_backref_rev(eb, BTRFS_MIXED_BACKREF_REV);
  btrfs_set_header_owner(eb, eb_root_owner);
  btrfs_set_header_level(eb, old_root->level);
  btrfs_set_header_generation(eb, old_generation);
 }
 if (tm)
  __tree_mod_log_rewind(fs_info, eb, time_seq, tm);
 else
  WARN_ON(btrfs_header_level(eb) != 0);
 WARN_ON(btrfs_header_nritems(eb) > BTRFS_NODEPTRS_PER_BLOCK(fs_info));

 return eb;
}
