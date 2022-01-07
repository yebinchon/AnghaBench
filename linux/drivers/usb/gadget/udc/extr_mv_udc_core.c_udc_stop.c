
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mv_udc {int stopped; TYPE_1__* op_regs; } ;
struct TYPE_2__ {int usbcmd; int usbintr; } ;


 int USBCMD_RUN_STOP ;
 int USBINTR_ERR_INT_EN ;
 int USBINTR_INT_EN ;
 int USBINTR_PORT_CHANGE_DETECT_EN ;
 int USBINTR_RESET_EN ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void udc_stop(struct mv_udc *udc)
{
 u32 tmp;


 tmp = readl(&udc->op_regs->usbintr);
 tmp &= ~(USBINTR_INT_EN | USBINTR_ERR_INT_EN |
  USBINTR_PORT_CHANGE_DETECT_EN | USBINTR_RESET_EN);
 writel(tmp, &udc->op_regs->usbintr);

 udc->stopped = 1;


 tmp = readl(&udc->op_regs->usbcmd);
 tmp &= ~USBCMD_RUN_STOP;
 writel(tmp, &udc->op_regs->usbcmd);
}
