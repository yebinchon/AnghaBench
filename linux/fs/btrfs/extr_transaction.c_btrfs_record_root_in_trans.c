
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {scalar_t__ transid; } ;
struct btrfs_root {scalar_t__ last_trans; int state; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int reloc_mutex; } ;


 int BTRFS_ROOT_IN_TRANS_SETUP ;
 int BTRFS_ROOT_REF_COWS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int record_root_in_trans (struct btrfs_trans_handle*,struct btrfs_root*,int ) ;
 int smp_rmb () ;
 int test_bit (int ,int *) ;

int btrfs_record_root_in_trans(struct btrfs_trans_handle *trans,
          struct btrfs_root *root)
{
 struct btrfs_fs_info *fs_info = root->fs_info;

 if (!test_bit(BTRFS_ROOT_REF_COWS, &root->state))
  return 0;





 smp_rmb();
 if (root->last_trans == trans->transid &&
     !test_bit(BTRFS_ROOT_IN_TRANS_SETUP, &root->state))
  return 0;

 mutex_lock(&fs_info->reloc_mutex);
 record_root_in_trans(trans, root, 0);
 mutex_unlock(&fs_info->reloc_mutex);

 return 0;
}
