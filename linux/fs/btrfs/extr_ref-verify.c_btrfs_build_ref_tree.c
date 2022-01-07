
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_path {int * locks; scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_fs_info {int mount_opt; int extent_root; } ;


 int BTRFS_READ_LOCK_BLOCKING ;
 int ENOMEM ;
 int REF_VERIFY ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_clear_opt (int ,int ) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_free_ref_cache (struct btrfs_fs_info*) ;
 int btrfs_header_level (struct extent_buffer*) ;
 struct extent_buffer* btrfs_read_lock_root_node (int ) ;
 int btrfs_set_lock_blocking_read (struct extent_buffer*) ;
 int btrfs_test_opt (struct btrfs_fs_info*,int ) ;
 int walk_down_tree (int ,struct btrfs_path*,int,int *,int *) ;
 int walk_up_tree (struct btrfs_path*,int*) ;

int btrfs_build_ref_tree(struct btrfs_fs_info *fs_info)
{
 struct btrfs_path *path;
 struct extent_buffer *eb;
 u64 bytenr = 0, num_bytes = 0;
 int ret, level;

 if (!btrfs_test_opt(fs_info, REF_VERIFY))
  return 0;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 eb = btrfs_read_lock_root_node(fs_info->extent_root);
 btrfs_set_lock_blocking_read(eb);
 level = btrfs_header_level(eb);
 path->nodes[level] = eb;
 path->slots[level] = 0;
 path->locks[level] = BTRFS_READ_LOCK_BLOCKING;

 while (1) {






  ret = walk_down_tree(fs_info->extent_root, path, level,
         &bytenr, &num_bytes);
  if (ret)
   break;
  ret = walk_up_tree(path, &level);
  if (ret < 0)
   break;
  if (ret > 0) {
   ret = 0;
   break;
  }
 }
 if (ret) {
  btrfs_clear_opt(fs_info->mount_opt, REF_VERIFY);
  btrfs_free_ref_cache(fs_info);
 }
 btrfs_free_path(path);
 return ret;
}
