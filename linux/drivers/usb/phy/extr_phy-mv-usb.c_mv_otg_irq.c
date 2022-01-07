
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mv_otg {int irq_status; TYPE_2__* pdata; TYPE_1__* op_regs; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {scalar_t__ vbus; } ;
struct TYPE_3__ {int otgsc; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int OTGSC_INTSTS_USB_ID ;
 int OTGSC_STS_USB_ID ;
 int mv_otg_run_state_machine (struct mv_otg*,int ) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static irqreturn_t mv_otg_irq(int irq, void *dev)
{
 struct mv_otg *mvotg = dev;
 u32 otgsc;

 otgsc = readl(&mvotg->op_regs->otgsc);
 writel(otgsc, &mvotg->op_regs->otgsc);





 if (mvotg->pdata->vbus)
  if ((otgsc & OTGSC_STS_USB_ID) &&
      !(otgsc & OTGSC_INTSTS_USB_ID))
   return IRQ_NONE;

 if ((otgsc & mvotg->irq_status) == 0)
  return IRQ_NONE;

 mv_otg_run_state_machine(mvotg, 0);

 return IRQ_HANDLED;
}
