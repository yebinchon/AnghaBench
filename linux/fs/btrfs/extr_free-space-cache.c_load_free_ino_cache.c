
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct TYPE_3__ {int objectid; } ;
struct btrfs_root {TYPE_1__ root_key; int root_item; struct btrfs_free_space_ctl* free_ino_ctl; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_free_space_ctl {int dummy; } ;
struct TYPE_4__ {scalar_t__ generation; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int INODE_MAP_CACHE ;
 scalar_t__ IS_ERR (struct inode*) ;
 int __load_free_space_cache (struct btrfs_root*,struct inode*,struct btrfs_free_space_ctl*,struct btrfs_path*,int ) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_err (struct btrfs_fs_info*,char*,int ) ;
 int btrfs_free_path (struct btrfs_path*) ;
 scalar_t__ btrfs_fs_closing (struct btrfs_fs_info*) ;
 scalar_t__ btrfs_root_generation (int *) ;
 int btrfs_test_opt (struct btrfs_fs_info*,int ) ;
 int iput (struct inode*) ;
 struct inode* lookup_free_ino_inode (struct btrfs_root*,struct btrfs_path*) ;

int load_free_ino_cache(struct btrfs_fs_info *fs_info, struct btrfs_root *root)
{
 struct btrfs_free_space_ctl *ctl = root->free_ino_ctl;
 struct btrfs_path *path;
 struct inode *inode;
 int ret = 0;
 u64 root_gen = btrfs_root_generation(&root->root_item);

 if (!btrfs_test_opt(fs_info, INODE_MAP_CACHE))
  return 0;





 if (btrfs_fs_closing(fs_info))
  return 0;

 path = btrfs_alloc_path();
 if (!path)
  return 0;

 inode = lookup_free_ino_inode(root, path);
 if (IS_ERR(inode))
  goto out;

 if (root_gen != BTRFS_I(inode)->generation)
  goto out_put;

 ret = __load_free_space_cache(root, inode, ctl, path, 0);

 if (ret < 0)
  btrfs_err(fs_info,
   "failed to load free ino cache for root %llu",
   root->root_key.objectid);
out_put:
 iput(inode);
out:
 btrfs_free_path(path);
 return ret;
}
