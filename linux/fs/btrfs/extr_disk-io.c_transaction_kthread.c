
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ time64_t ;
struct btrfs_transaction {scalar_t__ state; scalar_t__ start_time; scalar_t__ transid; } ;
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int commit_interval; int fs_state; int transaction_kthread_mutex; int cleaner_kthread; int trans_lock; int flags; struct btrfs_transaction* running_transaction; } ;


 int BTRFS_FS_NEED_ASYNC_COMMIT ;
 int BTRFS_FS_STATE_ERROR ;
 int ENOENT ;
 int HZ ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 scalar_t__ TRANS_STATE_BLOCKED ;
 struct btrfs_trans_handle* btrfs_attach_transaction (struct btrfs_root*) ;
 int btrfs_cleanup_transaction (struct btrfs_fs_info*) ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 int btrfs_transaction_blocked (struct btrfs_fs_info*) ;
 int kthread_should_stop () ;
 scalar_t__ ktime_get_seconds () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_timeout_interruptible (unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;
 int wake_up_process (int ) ;

__attribute__((used)) static int transaction_kthread(void *arg)
{
 struct btrfs_root *root = arg;
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_trans_handle *trans;
 struct btrfs_transaction *cur;
 u64 transid;
 time64_t now;
 unsigned long delay;
 bool cannot_commit;

 do {
  cannot_commit = 0;
  delay = HZ * fs_info->commit_interval;
  mutex_lock(&fs_info->transaction_kthread_mutex);

  spin_lock(&fs_info->trans_lock);
  cur = fs_info->running_transaction;
  if (!cur) {
   spin_unlock(&fs_info->trans_lock);
   goto sleep;
  }

  now = ktime_get_seconds();
  if (cur->state < TRANS_STATE_BLOCKED &&
      !test_bit(BTRFS_FS_NEED_ASYNC_COMMIT, &fs_info->flags) &&
      (now < cur->start_time ||
       now - cur->start_time < fs_info->commit_interval)) {
   spin_unlock(&fs_info->trans_lock);
   delay = HZ * 5;
   goto sleep;
  }
  transid = cur->transid;
  spin_unlock(&fs_info->trans_lock);


  trans = btrfs_attach_transaction(root);
  if (IS_ERR(trans)) {
   if (PTR_ERR(trans) != -ENOENT)
    cannot_commit = 1;
   goto sleep;
  }
  if (transid == trans->transid) {
   btrfs_commit_transaction(trans);
  } else {
   btrfs_end_transaction(trans);
  }
sleep:
  wake_up_process(fs_info->cleaner_kthread);
  mutex_unlock(&fs_info->transaction_kthread_mutex);

  if (unlikely(test_bit(BTRFS_FS_STATE_ERROR,
          &fs_info->fs_state)))
   btrfs_cleanup_transaction(fs_info);
  if (!kthread_should_stop() &&
    (!btrfs_transaction_blocked(fs_info) ||
     cannot_commit))
   schedule_timeout_interruptible(delay);
 } while (!kthread_should_stop());
 return 0;
}
