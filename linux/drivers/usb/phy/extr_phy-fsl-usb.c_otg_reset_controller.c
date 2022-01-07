
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int usbcmd; } ;


 int fsl_readl (int *) ;
 int fsl_writel (int,int *) ;
 TYPE_1__* usb_dr_regs ;

void otg_reset_controller(void)
{
 u32 command;

 command = fsl_readl(&usb_dr_regs->usbcmd);
 command |= (1 << 1);
 fsl_writel(command, &usb_dr_regs->usbcmd);
 while (fsl_readl(&usb_dr_regs->usbcmd) & (1 << 1))
  ;
}
