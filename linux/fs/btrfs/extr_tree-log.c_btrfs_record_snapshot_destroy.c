
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int transid; } ;
struct btrfs_inode {int log_mutex; int last_unlink_trans; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void btrfs_record_snapshot_destroy(struct btrfs_trans_handle *trans,
       struct btrfs_inode *dir)
{
 mutex_lock(&dir->log_mutex);
 dir->last_unlink_trans = trans->transid;
 mutex_unlock(&dir->log_mutex);
}
