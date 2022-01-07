
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visorhba_devdata {int thread_wait_ms; int interrupt_rcvd; int rsp_queue; } ;
struct uiscmdrsp {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int atomic_read (int *) ;
 int drain_queue (struct uiscmdrsp*,struct visorhba_devdata*) ;
 int kfree (struct uiscmdrsp*) ;
 struct uiscmdrsp* kmalloc (int const,int ) ;
 scalar_t__ kthread_should_stop () ;
 int msecs_to_jiffies (int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int process_incoming_rsps(void *v)
{
 struct visorhba_devdata *devdata = v;
 struct uiscmdrsp *cmdrsp = ((void*)0);
 const int size = sizeof(*cmdrsp);

 cmdrsp = kmalloc(size, GFP_ATOMIC);
 if (!cmdrsp)
  return -ENOMEM;

 while (1) {
  if (kthread_should_stop())
   break;
  wait_event_interruptible_timeout(
   devdata->rsp_queue, (atomic_read(
          &devdata->interrupt_rcvd) == 1),
    msecs_to_jiffies(devdata->thread_wait_ms));

  drain_queue(cmdrsp, devdata);
 }
 kfree(cmdrsp);
 return 0;
}
