
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_4__ {int objectid; } ;
struct btrfs_root {TYPE_2__ root_key; TYPE_1__* fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_extent_inline_ref {int dummy; } ;
struct TYPE_3__ {int nodesize; } ;


 int ENOENT ;
 int ENOMEM ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;
 int lookup_extent_backref (struct btrfs_trans_handle*,struct btrfs_path*,struct btrfs_extent_inline_ref**,int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static int check_ref_exists(struct btrfs_trans_handle *trans,
       struct btrfs_root *root, u64 bytenr, u64 parent,
       int level)
{
 struct btrfs_path *path;
 struct btrfs_extent_inline_ref *iref;
 int ret;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 ret = lookup_extent_backref(trans, path, &iref, bytenr,
        root->fs_info->nodesize, parent,
        root->root_key.objectid, level, 0);
 btrfs_free_path(path);
 if (ret == -ENOENT)
  return 0;
 if (ret < 0)
  return ret;
 return 1;
}
