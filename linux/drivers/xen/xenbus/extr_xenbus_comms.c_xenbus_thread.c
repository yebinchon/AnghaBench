
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int kthread_should_stop () ;
 int pr_warn_ratelimited (char*,int) ;
 int process_msg () ;
 int process_writes () ;
 int schedule () ;
 scalar_t__ wait_event_interruptible (int ,int ) ;
 int xb_thread_work () ;
 int xb_waitq ;
 int * xenbus_task ;

__attribute__((used)) static int xenbus_thread(void *unused)
{
 int err;

 while (!kthread_should_stop()) {
  if (wait_event_interruptible(xb_waitq, xb_thread_work()))
   continue;

  err = process_msg();
  if (err == -ENOMEM)
   schedule();
  else if (err)
   pr_warn_ratelimited("error %d while reading message\n",
         err);

  err = process_writes();
  if (err)
   pr_warn_ratelimited("error %d while writing message\n",
         err);
 }

 xenbus_task = ((void*)0);
 return 0;
}
