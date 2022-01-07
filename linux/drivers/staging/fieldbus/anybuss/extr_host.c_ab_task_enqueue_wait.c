
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct kfifo {int dummy; } ;
struct ab_task {int result; int done; } ;
typedef int spinlock_t ;


 int ab_task_enqueue (struct ab_task*,struct kfifo*,int *,int *) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int
ab_task_enqueue_wait(struct ab_task *t, struct kfifo *q, spinlock_t *slock,
       wait_queue_head_t *wq)
{
 int ret;

 ret = ab_task_enqueue(t, q, slock, wq);
 if (ret)
  return ret;
 ret = wait_for_completion_interruptible(&t->done);
 if (ret)
  return ret;
 return t->result;
}
