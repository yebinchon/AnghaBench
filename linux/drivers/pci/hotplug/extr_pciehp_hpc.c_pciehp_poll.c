
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int pending_events; } ;


 int HZ ;
 int IRQ_NOTCONNECTED ;
 scalar_t__ IRQ_WAKE_THREAD ;
 scalar_t__ atomic_read (int *) ;
 int kthread_should_stop () ;
 scalar_t__ pciehp_isr (int ,struct controller*) ;
 int pciehp_ist (int ,struct controller*) ;
 int pciehp_poll_time ;
 int schedule_timeout_idle (int) ;

__attribute__((used)) static int pciehp_poll(void *data)
{
 struct controller *ctrl = data;

 schedule_timeout_idle(10 * HZ);

 while (!kthread_should_stop()) {

  while (pciehp_isr(IRQ_NOTCONNECTED, ctrl) == IRQ_WAKE_THREAD ||
         atomic_read(&ctrl->pending_events))
   pciehp_ist(IRQ_NOTCONNECTED, ctrl);

  if (pciehp_poll_time <= 0 || pciehp_poll_time > 60)
   pciehp_poll_time = 2;

  schedule_timeout_idle(pciehp_poll_time * HZ);
 }

 return 0;
}
