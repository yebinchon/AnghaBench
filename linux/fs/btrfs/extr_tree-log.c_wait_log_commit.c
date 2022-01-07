
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int log_transid_committed; int * log_commit_wait; int log_mutex; int * log_commit; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 scalar_t__ atomic_read (int *) ;
 int finish_wait (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int wait ;

__attribute__((used)) static void wait_log_commit(struct btrfs_root *root, int transid)
{
 DEFINE_WAIT(wait);
 int index = transid % 2;






 for (;;) {
  prepare_to_wait(&root->log_commit_wait[index],
    &wait, TASK_UNINTERRUPTIBLE);

  if (!(root->log_transid_committed < transid &&
        atomic_read(&root->log_commit[index])))
   break;

  mutex_unlock(&root->log_mutex);
  schedule();
  mutex_lock(&root->log_mutex);
 }
 finish_wait(&root->log_commit_wait[index], &wait);
}
