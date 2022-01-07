
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mv_otg {int irq_en; int irq_status; TYPE_2__* op_regs; TYPE_1__* pdata; } ;
struct TYPE_4__ {int otgsc; } ;
struct TYPE_3__ {int * id; int * vbus; } ;


 int OTGSC_INTR_A_SESSION_VALID ;
 int OTGSC_INTR_A_VBUS_VALID ;
 int OTGSC_INTR_B_SESSION_END ;
 int OTGSC_INTR_B_SESSION_VALID ;
 int OTGSC_INTR_USB_ID ;
 int OTGSC_INTSTS_A_SESSION_VALID ;
 int OTGSC_INTSTS_A_VBUS_VALID ;
 int OTGSC_INTSTS_B_SESSION_END ;
 int OTGSC_INTSTS_B_SESSION_VALID ;
 int OTGSC_INTSTS_USB_ID ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void mv_otg_init_irq(struct mv_otg *mvotg)
{
 u32 otgsc;

 mvotg->irq_en = OTGSC_INTR_A_SESSION_VALID
     | OTGSC_INTR_A_VBUS_VALID;
 mvotg->irq_status = OTGSC_INTSTS_A_SESSION_VALID
     | OTGSC_INTSTS_A_VBUS_VALID;

 if (mvotg->pdata->vbus == ((void*)0)) {
  mvotg->irq_en |= OTGSC_INTR_B_SESSION_VALID
      | OTGSC_INTR_B_SESSION_END;
  mvotg->irq_status |= OTGSC_INTSTS_B_SESSION_VALID
      | OTGSC_INTSTS_B_SESSION_END;
 }

 if (mvotg->pdata->id == ((void*)0)) {
  mvotg->irq_en |= OTGSC_INTR_USB_ID;
  mvotg->irq_status |= OTGSC_INTSTS_USB_ID;
 }

 otgsc = readl(&mvotg->op_regs->otgsc);
 otgsc |= mvotg->irq_en;
 writel(otgsc, &mvotg->op_regs->otgsc);
}
