
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int log_writer_wait; int log_mutex; int log_writers; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int atomic_read (int *) ;
 int finish_wait (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int wait ;

__attribute__((used)) static void wait_for_writer(struct btrfs_root *root)
{
 DEFINE_WAIT(wait);

 for (;;) {
  prepare_to_wait(&root->log_writer_wait, &wait,
    TASK_UNINTERRUPTIBLE);
  if (!atomic_read(&root->log_writers))
   break;

  mutex_unlock(&root->log_mutex);
  schedule();
  mutex_lock(&root->log_mutex);
 }
 finish_wait(&root->log_writer_wait, &wait);
}
