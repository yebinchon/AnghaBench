
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
typedef int t ;
struct kfifo {int dummy; } ;
struct ab_task {int start_jiffies; } ;
typedef int spinlock_t ;


 int ENOMEM ;
 int __ab_task_get (struct ab_task*) ;
 int ab_task_put (struct ab_task*) ;
 int jiffies ;
 int kfifo_in_spinlocked (struct kfifo*,struct ab_task**,int,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int
ab_task_enqueue(struct ab_task *t, struct kfifo *q, spinlock_t *slock,
  wait_queue_head_t *wq)
{
 int ret;

 t->start_jiffies = jiffies;
 __ab_task_get(t);
 ret = kfifo_in_spinlocked(q, &t, sizeof(t), slock);
 if (!ret) {
  ab_task_put(t);
  return -ENOMEM;
 }
 wake_up(wq);
 return 0;
}
