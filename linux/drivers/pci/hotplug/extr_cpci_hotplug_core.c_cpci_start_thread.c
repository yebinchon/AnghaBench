
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ irq; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 TYPE_1__* controller ;
 int cpci_thread ;
 int err (char*) ;
 int event_thread ;
 int kthread_run (int ,int *,char*) ;
 int poll_thread ;
 scalar_t__ thread_finished ;

__attribute__((used)) static int
cpci_start_thread(void)
{
 if (controller->irq)
  cpci_thread = kthread_run(event_thread, ((void*)0), "cpci_hp_eventd");
 else
  cpci_thread = kthread_run(poll_thread, ((void*)0), "cpci_hp_polld");
 if (IS_ERR(cpci_thread)) {
  err("Can't start up our thread");
  return PTR_ERR(cpci_thread);
 }
 thread_finished = 0;
 return 0;
}
