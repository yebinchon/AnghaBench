
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;


 int ENOMEM ;
 int __get_inode_info (struct btrfs_root*,struct btrfs_path*,int ,int *,int *,int *,int *,int *,int *) ;
 struct btrfs_path* alloc_path_for_send () ;
 int btrfs_free_path (struct btrfs_path*) ;

__attribute__((used)) static int get_inode_info(struct btrfs_root *root,
     u64 ino, u64 *size, u64 *gen,
     u64 *mode, u64 *uid, u64 *gid,
     u64 *rdev)
{
 struct btrfs_path *path;
 int ret;

 path = alloc_path_for_send();
 if (!path)
  return -ENOMEM;
 ret = __get_inode_info(root, path, ino, size, gen, mode, uid, gid,
          rdev);
 btrfs_free_path(path);
 return ret;
}
