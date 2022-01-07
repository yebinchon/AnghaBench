
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * name; } ;
struct autofs_wait_queue {int queue; int wait_ctr; TYPE_1__ name; int status; struct autofs_wait_queue* next; } ;
struct autofs_sb_info {int flags; int pipefd; int wq_mutex; int * pipe; struct autofs_wait_queue* queues; } ;


 int AUTOFS_SBI_CATATONIC ;
 int ENOENT ;
 int fput (int *) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 int wake_up_interruptible (int *) ;

void autofs_catatonic_mode(struct autofs_sb_info *sbi)
{
 struct autofs_wait_queue *wq, *nwq;

 mutex_lock(&sbi->wq_mutex);
 if (sbi->flags & AUTOFS_SBI_CATATONIC) {
  mutex_unlock(&sbi->wq_mutex);
  return;
 }

 pr_debug("entering catatonic mode\n");

 sbi->flags |= AUTOFS_SBI_CATATONIC;
 wq = sbi->queues;
 sbi->queues = ((void*)0);
 while (wq) {
  nwq = wq->next;
  wq->status = -ENOENT;
  kfree(wq->name.name);
  wq->name.name = ((void*)0);
  wq->wait_ctr--;
  wake_up_interruptible(&wq->queue);
  wq = nwq;
 }
 fput(sbi->pipe);
 sbi->pipe = ((void*)0);
 sbi->pipefd = -1;
 mutex_unlock(&sbi->wq_mutex);
}
