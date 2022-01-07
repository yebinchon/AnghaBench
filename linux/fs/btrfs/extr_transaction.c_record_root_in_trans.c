
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_trans_handle {scalar_t__ transid; } ;
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {scalar_t__ last_trans; scalar_t__ commit_root; scalar_t__ node; int state; TYPE_1__ root_key; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int fs_roots_radix_lock; int fs_roots_radix; struct btrfs_root* extent_root; } ;


 int BTRFS_ROOT_IN_TRANS_SETUP ;
 int BTRFS_ROOT_REF_COWS ;
 int BTRFS_ROOT_TRANS_TAG ;
 int WARN_ON (int) ;
 int btrfs_init_reloc_root (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int clear_bit (int ,int *) ;
 int radix_tree_tag_set (int *,unsigned long,int ) ;
 int set_bit (int ,int *) ;
 int smp_mb__before_atomic () ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int record_root_in_trans(struct btrfs_trans_handle *trans,
          struct btrfs_root *root,
          int force)
{
 struct btrfs_fs_info *fs_info = root->fs_info;

 if ((test_bit(BTRFS_ROOT_REF_COWS, &root->state) &&
     root->last_trans < trans->transid) || force) {
  WARN_ON(root == fs_info->extent_root);
  WARN_ON(!force && root->commit_root != root->node);






  set_bit(BTRFS_ROOT_IN_TRANS_SETUP, &root->state);




  smp_wmb();

  spin_lock(&fs_info->fs_roots_radix_lock);
  if (root->last_trans == trans->transid && !force) {
   spin_unlock(&fs_info->fs_roots_radix_lock);
   return 0;
  }
  radix_tree_tag_set(&fs_info->fs_roots_radix,
       (unsigned long)root->root_key.objectid,
       BTRFS_ROOT_TRANS_TAG);
  spin_unlock(&fs_info->fs_roots_radix_lock);
  root->last_trans = trans->transid;
  btrfs_init_reloc_root(trans, root);
  smp_mb__before_atomic();
  clear_bit(BTRFS_ROOT_IN_TRANS_SETUP, &root->state);
 }
 return 0;
}
