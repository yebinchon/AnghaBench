
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int refs; } ;


 int kfree (struct btrfs_root*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static inline void btrfs_put_fs_root(struct btrfs_root *root)
{
 if (refcount_dec_and_test(&root->refs))
  kfree(root);
}
