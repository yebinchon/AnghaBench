
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int refs; } ;


 scalar_t__ refcount_inc_not_zero (int *) ;

__attribute__((used)) static inline struct btrfs_root *btrfs_grab_fs_root(struct btrfs_root *root)
{
 if (refcount_inc_not_zero(&root->refs))
  return root;
 return ((void*)0);
}
