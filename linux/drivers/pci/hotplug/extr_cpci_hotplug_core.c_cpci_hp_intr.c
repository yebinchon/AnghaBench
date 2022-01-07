
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_4__ {int irq_flags; TYPE_1__* ops; int dev_id; } ;
struct TYPE_3__ {int (* disable_irq ) () ;int (* check_irq ) (int ) ;} ;


 int IRQF_SHARED ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 TYPE_2__* controller ;
 int cpci_thread ;
 int dbg (char*) ;
 int stub1 (int ) ;
 int stub2 () ;
 int wake_up_process (int ) ;

__attribute__((used)) static irqreturn_t
cpci_hp_intr(int irq, void *data)
{
 dbg("entered cpci_hp_intr");


 if ((controller->irq_flags & IRQF_SHARED) &&
     !controller->ops->check_irq(controller->dev_id)) {
  dbg("exited cpci_hp_intr, not our interrupt");
  return IRQ_NONE;
 }


 controller->ops->disable_irq();


 wake_up_process(cpci_thread);
 return IRQ_HANDLED;
}
