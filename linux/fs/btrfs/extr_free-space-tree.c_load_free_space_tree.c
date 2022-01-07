
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btrfs_path {int skip_locking; int search_commit_root; int * nodes; int reada; } ;
struct btrfs_free_space_info {int dummy; } ;
struct btrfs_caching_control {struct btrfs_block_group_cache* block_group; } ;
struct btrfs_block_group_cache {int dummy; } ;


 int BTRFS_FREE_SPACE_USING_BITMAPS ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct btrfs_free_space_info*) ;
 int PTR_ERR (struct btrfs_free_space_info*) ;
 int READA_FORWARD ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_free_space_extent_count (int ,struct btrfs_free_space_info*) ;
 int btrfs_free_space_flags (int ,struct btrfs_free_space_info*) ;
 int load_free_space_bitmaps (struct btrfs_caching_control*,struct btrfs_path*,int) ;
 int load_free_space_extents (struct btrfs_caching_control*,struct btrfs_path*,int) ;
 struct btrfs_free_space_info* search_free_space_info (int *,struct btrfs_block_group_cache*,struct btrfs_path*,int ) ;

int load_free_space_tree(struct btrfs_caching_control *caching_ctl)
{
 struct btrfs_block_group_cache *block_group;
 struct btrfs_free_space_info *info;
 struct btrfs_path *path;
 u32 extent_count, flags;
 int ret;

 block_group = caching_ctl->block_group;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;





 path->skip_locking = 1;
 path->search_commit_root = 1;
 path->reada = READA_FORWARD;

 info = search_free_space_info(((void*)0), block_group, path, 0);
 if (IS_ERR(info)) {
  ret = PTR_ERR(info);
  goto out;
 }
 extent_count = btrfs_free_space_extent_count(path->nodes[0], info);
 flags = btrfs_free_space_flags(path->nodes[0], info);






 if (flags & BTRFS_FREE_SPACE_USING_BITMAPS)
  ret = load_free_space_bitmaps(caching_ctl, path, extent_count);
 else
  ret = load_free_space_extents(caching_ctl, path, extent_count);

out:
 btrfs_free_path(path);
 return ret;
}
