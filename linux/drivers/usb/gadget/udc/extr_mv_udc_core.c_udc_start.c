
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mv_udc {TYPE_1__* op_regs; scalar_t__ stopped; } ;
struct TYPE_2__ {int usbcmd; int usbintr; } ;


 int USBCMD_RUN_STOP ;
 int USBINTR_DEVICE_SUSPEND ;
 int USBINTR_ERR_INT_EN ;
 int USBINTR_INT_EN ;
 int USBINTR_PORT_CHANGE_DETECT_EN ;
 int USBINTR_RESET_EN ;
 int writel (int,int *) ;

__attribute__((used)) static void udc_start(struct mv_udc *udc)
{
 u32 usbintr;

 usbintr = USBINTR_INT_EN | USBINTR_ERR_INT_EN
  | USBINTR_PORT_CHANGE_DETECT_EN
  | USBINTR_RESET_EN | USBINTR_DEVICE_SUSPEND;

 writel(usbintr, &udc->op_regs->usbintr);

 udc->stopped = 0;


 writel(USBCMD_RUN_STOP, &udc->op_regs->usbcmd);
}
