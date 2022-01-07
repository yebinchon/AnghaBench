
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {scalar_t__ node; int state; } ;


 int BTRFS_ROOT_IN_RADIX ;
 scalar_t__ WARN_ON (int ) ;
 int free_extent_buffer (scalar_t__) ;
 int kfree (struct btrfs_root*) ;
 int test_bit (int ,int *) ;

void btrfs_free_dummy_root(struct btrfs_root *root)
{
 if (!root)
  return;

 if (WARN_ON(test_bit(BTRFS_ROOT_IN_RADIX, &root->state)))
  return;
 if (root->node) {

  free_extent_buffer(root->node);
 }
 kfree(root);
}
