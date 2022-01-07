
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mv_otg {TYPE_2__* op_regs; TYPE_1__* pdev; } ;
struct TYPE_4__ {int usbsts; int usbintr; int usbcmd; } ;
struct TYPE_3__ {int dev; } ;


 int ETIMEDOUT ;
 int USBCMD_CTRL_RESET ;
 int USBCMD_RUN_STOP ;
 int dev_err (int *,char*) ;
 int readl (int *) ;
 int udelay (int) ;
 int writel (int,int *) ;

__attribute__((used)) static int mv_otg_reset(struct mv_otg *mvotg)
{
 unsigned int loops;
 u32 tmp;


 tmp = readl(&mvotg->op_regs->usbcmd);
 tmp &= ~USBCMD_RUN_STOP;
 writel(tmp, &mvotg->op_regs->usbcmd);


 writel(USBCMD_CTRL_RESET, &mvotg->op_regs->usbcmd);

 loops = 500;
 while (readl(&mvotg->op_regs->usbcmd) & USBCMD_CTRL_RESET) {
  if (loops == 0) {
   dev_err(&mvotg->pdev->dev,
    "Wait for RESET completed TIMEOUT\n");
   return -ETIMEDOUT;
  }
  loops--;
  udelay(20);
 }

 writel(0x0, &mvotg->op_regs->usbintr);
 tmp = readl(&mvotg->op_regs->usbsts);
 writel(tmp, &mvotg->op_regs->usbsts);

 return 0;
}
