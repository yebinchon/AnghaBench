
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_trans_handle {scalar_t__ transid; TYPE_1__* fs_info; } ;
struct btrfs_inode {scalar_t__ logged_trans; scalar_t__ last_trans; int runtime_flags; } ;
struct TYPE_2__ {int flags; } ;


 int BTRFS_FS_LOG_RECOVERING ;
 int BTRFS_INODE_NEEDS_FULL_SYNC ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool inode_logged(struct btrfs_trans_handle *trans,
    struct btrfs_inode *inode)
{
 if (inode->logged_trans == trans->transid)
  return 1;

 if (inode->last_trans == trans->transid &&
     test_bit(BTRFS_INODE_NEEDS_FULL_SYNC, &inode->runtime_flags) &&
     !test_bit(BTRFS_FS_LOG_RECOVERING, &trans->fs_info->flags))
  return 1;

 return 0;
}
