
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int level; } ;
struct tree_mod_elem {scalar_t__ op; TYPE_1__ old_root; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;


 scalar_t__ MOD_LOG_ROOT_REPLACE ;
 struct tree_mod_elem* __tree_mod_log_oldest_root (struct extent_buffer*,int ) ;
 int btrfs_header_level (struct extent_buffer*) ;
 struct extent_buffer* btrfs_root_node (struct btrfs_root*) ;
 int free_extent_buffer (struct extent_buffer*) ;

int btrfs_old_root_level(struct btrfs_root *root, u64 time_seq)
{
 struct tree_mod_elem *tm;
 int level;
 struct extent_buffer *eb_root = btrfs_root_node(root);

 tm = __tree_mod_log_oldest_root(eb_root, time_seq);
 if (tm && tm->op == MOD_LOG_ROOT_REPLACE) {
  level = tm->old_root.level;
 } else {
  level = btrfs_header_level(eb_root);
 }
 free_extent_buffer(eb_root);

 return level;
}
