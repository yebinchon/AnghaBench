
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_size; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_2__ {int objectid; } ;
struct btrfs_root {TYPE_1__ root_key; struct btrfs_free_space_ctl* free_ino_ctl; struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_io_ctl {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_free_space_ctl {int dummy; } ;
typedef int io_ctl ;


 int BTRFS_I (struct inode*) ;
 int INODE_MAP_CACHE ;
 int __btrfs_write_out_cache (struct btrfs_root*,struct inode*,struct btrfs_free_space_ctl*,int *,struct btrfs_io_ctl*,struct btrfs_trans_handle*) ;
 int btrfs_delalloc_release_metadata (int ,int ,int) ;
 int btrfs_err (struct btrfs_fs_info*,char*,int ) ;
 int btrfs_test_opt (struct btrfs_fs_info*,int ) ;
 int btrfs_wait_cache_io_root (struct btrfs_root*,struct btrfs_trans_handle*,struct btrfs_io_ctl*,struct btrfs_path*) ;
 int memset (struct btrfs_io_ctl*,int ,int) ;

int btrfs_write_out_ino_cache(struct btrfs_root *root,
         struct btrfs_trans_handle *trans,
         struct btrfs_path *path,
         struct inode *inode)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_free_space_ctl *ctl = root->free_ino_ctl;
 int ret;
 struct btrfs_io_ctl io_ctl;
 bool release_metadata = 1;

 if (!btrfs_test_opt(fs_info, INODE_MAP_CACHE))
  return 0;

 memset(&io_ctl, 0, sizeof(io_ctl));
 ret = __btrfs_write_out_cache(root, inode, ctl, ((void*)0), &io_ctl, trans);
 if (!ret) {






  release_metadata = 0;
  ret = btrfs_wait_cache_io_root(root, trans, &io_ctl, path);
 }

 if (ret) {
  if (release_metadata)
   btrfs_delalloc_release_metadata(BTRFS_I(inode),
     inode->i_size, 1);





 }

 return ret;
}
