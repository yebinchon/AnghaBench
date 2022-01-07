
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct btrfs_trans_handle {TYPE_1__* transaction; } ;
struct TYPE_6__ {int lock; TYPE_2__* root; int last_log_commit; int last_sub_trans; int last_trans; } ;
struct TYPE_5__ {int last_log_commit; int log_transid; } ;
struct TYPE_4__ {int transid; } ;


 TYPE_3__* BTRFS_I (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void btrfs_set_inode_last_trans(struct btrfs_trans_handle *trans,
           struct inode *inode)
{
 spin_lock(&BTRFS_I(inode)->lock);
 BTRFS_I(inode)->last_trans = trans->transaction->transid;
 BTRFS_I(inode)->last_sub_trans = BTRFS_I(inode)->root->log_transid;
 BTRFS_I(inode)->last_log_commit = BTRFS_I(inode)->root->last_log_commit;
 spin_unlock(&BTRFS_I(inode)->lock);
}
