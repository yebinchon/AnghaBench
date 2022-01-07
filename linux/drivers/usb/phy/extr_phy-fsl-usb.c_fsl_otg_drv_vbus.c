
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct otg_fsm {int dummy; } ;
struct TYPE_2__ {int portsc; } ;


 int PORTSC_PORT_POWER ;
 int PORTSC_W1C_BITS ;
 int fsl_readl (int *) ;
 int fsl_writel (int,int *) ;
 TYPE_1__* usb_dr_regs ;

void fsl_otg_drv_vbus(struct otg_fsm *fsm, int on)
{
 u32 tmp;

 if (on) {
  tmp = fsl_readl(&usb_dr_regs->portsc) & ~PORTSC_W1C_BITS;
  fsl_writel(tmp | PORTSC_PORT_POWER, &usb_dr_regs->portsc);
 } else {
  tmp = fsl_readl(&usb_dr_regs->portsc) &
        ~PORTSC_W1C_BITS & ~PORTSC_PORT_POWER;
  fsl_writel(tmp, &usb_dr_regs->portsc);
 }
}
