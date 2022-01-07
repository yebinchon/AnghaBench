
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_scu_ipc_dev {int cmd_complete; scalar_t__ irq_mode; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t ioc(int irq, void *dev_id)
{
 struct intel_scu_ipc_dev *scu = dev_id;

 if (scu->irq_mode)
  complete(&scu->cmd_complete);

 return IRQ_HANDLED;
}
