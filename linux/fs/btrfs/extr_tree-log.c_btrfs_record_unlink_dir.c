
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {scalar_t__ transid; } ;
struct btrfs_inode {scalar_t__ last_unlink_trans; scalar_t__ logged_trans; int log_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void btrfs_record_unlink_dir(struct btrfs_trans_handle *trans,
        struct btrfs_inode *dir, struct btrfs_inode *inode,
        int for_rename)
{
 mutex_lock(&inode->log_mutex);
 inode->last_unlink_trans = trans->transid;
 mutex_unlock(&inode->log_mutex);





 if (dir->logged_trans == trans->transid)
  return;





 if (inode->logged_trans == trans->transid)
  return;
 if (for_rename)
  goto record;


 return;

record:
 mutex_lock(&dir->log_mutex);
 dir->last_unlink_trans = trans->transid;
 mutex_unlock(&dir->log_mutex);
}
