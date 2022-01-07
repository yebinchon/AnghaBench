
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int otgsc; } ;


 int OTGSC_CTRL_VBUS_CHARGE ;
 int OTGSC_CTRL_VBUS_DISCHARGE ;
 int OTGSC_INTSTS_MASK ;
 int fsl_readl (int *) ;
 int fsl_writel (int,int *) ;
 TYPE_1__* usb_dr_regs ;

void fsl_otg_dischrg_vbus(int on)
{
 u32 tmp;

 tmp = fsl_readl(&usb_dr_regs->otgsc) & ~OTGSC_INTSTS_MASK;

 if (on)

  tmp = (tmp & ~OTGSC_CTRL_VBUS_CHARGE) |
   OTGSC_CTRL_VBUS_DISCHARGE;
 else

  tmp &= ~OTGSC_CTRL_VBUS_DISCHARGE;

 fsl_writel(tmp, &usb_dr_regs->otgsc);
}
