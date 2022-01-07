
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;
typedef int gfp_t ;


 struct btrfs_root* kzalloc (int,int ) ;

__attribute__((used)) static struct btrfs_root *btrfs_alloc_root(struct btrfs_fs_info *fs_info,
  gfp_t flags)
{
 struct btrfs_root *root = kzalloc(sizeof(*root), flags);
 if (root)
  root->fs_info = fs_info;
 return root;
}
