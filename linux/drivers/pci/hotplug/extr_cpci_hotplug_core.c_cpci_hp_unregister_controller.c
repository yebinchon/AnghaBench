
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpci_hp_controller {int dummy; } ;
struct TYPE_2__ {int dev_id; scalar_t__ irq; } ;


 int ENODEV ;
 int cleanup_slots () ;
 TYPE_1__* controller ;
 int cpci_stop_thread () ;
 int free_irq (scalar_t__,int ) ;
 int thread_finished ;

int
cpci_hp_unregister_controller(struct cpci_hp_controller *old_controller)
{
 int status = 0;

 if (controller) {
  if (!thread_finished)
   cpci_stop_thread();
  if (controller->irq)
   free_irq(controller->irq, controller->dev_id);
  controller = ((void*)0);
  cleanup_slots();
 } else
  status = -ENODEV;
 return status;
}
