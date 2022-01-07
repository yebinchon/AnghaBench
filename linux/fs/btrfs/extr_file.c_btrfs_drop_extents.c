
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;


 int ENOMEM ;
 int __btrfs_drop_extents (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,struct btrfs_path*,int ,int ,int *,int,int ,int ,int *) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;

int btrfs_drop_extents(struct btrfs_trans_handle *trans,
         struct btrfs_root *root, struct inode *inode, u64 start,
         u64 end, int drop_cache)
{
 struct btrfs_path *path;
 int ret;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;
 ret = __btrfs_drop_extents(trans, root, inode, path, start, end, ((void*)0),
       drop_cache, 0, 0, ((void*)0));
 btrfs_free_path(path);
 return ret;
}
