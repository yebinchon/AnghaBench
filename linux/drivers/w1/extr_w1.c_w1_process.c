
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_master {int refcnt; scalar_t__ search_count; int list_mutex; int mutex; } ;


 int TASK_INTERRUPTIBLE ;
 int W1_SEARCH ;
 int __set_current_state (int ) ;
 int atomic_dec (int *) ;
 scalar_t__ kthread_should_stop () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule () ;
 unsigned long schedule_timeout (unsigned long) ;
 unsigned long usecs_to_jiffies (scalar_t__) ;
 int w1_process_callbacks (struct w1_master*) ;
 int w1_search_process (struct w1_master*,int ) ;
 int w1_timeout ;
 scalar_t__ w1_timeout_us ;

int w1_process(void *data)
{
 struct w1_master *dev = (struct w1_master *) data;



 const unsigned long jtime =
   usecs_to_jiffies(w1_timeout * 1000000 + w1_timeout_us);

 unsigned long jremain = 0;

 for (;;) {

  if (!jremain && dev->search_count) {
   mutex_lock(&dev->mutex);
   w1_search_process(dev, W1_SEARCH);
   mutex_unlock(&dev->mutex);
  }

  mutex_lock(&dev->list_mutex);



  if (!w1_process_callbacks(dev) && jremain) {




   jremain = 1;
  }

  __set_current_state(TASK_INTERRUPTIBLE);




  mutex_unlock(&dev->list_mutex);

  if (kthread_should_stop())
   break;


  if (dev->search_count) {
   if (!jremain)
    jremain = jtime;
   jremain = schedule_timeout(jremain);
  }
  else
   schedule();
 }

 atomic_dec(&dev->refcnt);

 return 0;
}
