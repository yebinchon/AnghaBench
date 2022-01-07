
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct otg_fsm {int dummy; } ;
struct TYPE_2__ {int otgsc; } ;


 int OTGSC_CTRL_DATA_PULSING ;
 int OTGSC_INTSTS_MASK ;
 int fsl_readl (int *) ;
 int fsl_writel (int,int *) ;
 TYPE_1__* usb_dr_regs ;

void fsl_otg_loc_conn(struct otg_fsm *fsm, int on)
{
 u32 tmp;

 tmp = fsl_readl(&usb_dr_regs->otgsc) & ~OTGSC_INTSTS_MASK;

 if (on)
  tmp |= OTGSC_CTRL_DATA_PULSING;
 else
  tmp &= ~OTGSC_CTRL_DATA_PULSING;

 fsl_writel(tmp, &usb_dr_regs->otgsc);
}
