
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_fs_paths {struct btrfs_root* fs_root; struct btrfs_data_container* fspath; struct btrfs_path* btrfs_path; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_data_container {int dummy; } ;
typedef int s32 ;


 int ENOMEM ;
 struct inode_fs_paths* ERR_CAST (struct btrfs_data_container*) ;
 struct inode_fs_paths* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct btrfs_data_container*) ;
 struct btrfs_data_container* init_data_container (int ) ;
 struct inode_fs_paths* kmalloc (int,int ) ;
 int kvfree (struct btrfs_data_container*) ;

struct inode_fs_paths *init_ipath(s32 total_bytes, struct btrfs_root *fs_root,
     struct btrfs_path *path)
{
 struct inode_fs_paths *ifp;
 struct btrfs_data_container *fspath;

 fspath = init_data_container(total_bytes);
 if (IS_ERR(fspath))
  return ERR_CAST(fspath);

 ifp = kmalloc(sizeof(*ifp), GFP_KERNEL);
 if (!ifp) {
  kvfree(fspath);
  return ERR_PTR(-ENOMEM);
 }

 ifp->btrfs_path = path;
 ifp->fspath = fspath;
 ifp->fs_root = fs_root;

 return ifp;
}
