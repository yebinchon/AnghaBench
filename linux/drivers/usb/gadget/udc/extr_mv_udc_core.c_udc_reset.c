
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct mv_udc {int ep_dqh_dma; TYPE_3__* op_regs; scalar_t__ force_fs; TYPE_2__* cap_regs; TYPE_1__* dev; } ;
struct TYPE_6__ {int * epctrlx; int * portsc; int eplistaddr; int epsetupstat; int usbmode; int usbcmd; } ;
struct TYPE_5__ {int hcsparams; } ;
struct TYPE_4__ {int dev; } ;


 int EPCTRL_RX_EP_STALL ;
 int EPCTRL_TX_EP_STALL ;
 int ETIMEDOUT ;
 int HCSPARAMS_PPC ;
 unsigned int LOOPS (int ) ;
 int LOOPS_USEC ;
 int PORTSCX_FORCE_FULL_SPEED_CONNECT ;
 int PORTSCX_PORT_POWER ;
 int PORTSCX_W1C_BITS ;
 int RESET_TIMEOUT ;
 int USBCMD_CTRL_RESET ;
 int USBCMD_RUN_STOP ;
 int USBMODE_CTRL_MODE_DEVICE ;
 int USBMODE_SETUP_LOCK_OFF ;
 int USB_EP_LIST_ADDRESS_MASK ;
 int dev_err (int *,char*) ;
 int readl (int *) ;
 int udelay (int ) ;
 int writel (int,int *) ;

__attribute__((used)) static int udc_reset(struct mv_udc *udc)
{
 unsigned int loops;
 u32 tmp, portsc;


 tmp = readl(&udc->op_regs->usbcmd);
 tmp &= ~USBCMD_RUN_STOP;
 writel(tmp, &udc->op_regs->usbcmd);


 writel(USBCMD_CTRL_RESET, &udc->op_regs->usbcmd);


 loops = LOOPS(RESET_TIMEOUT);
 while (readl(&udc->op_regs->usbcmd) & USBCMD_CTRL_RESET) {
  if (loops == 0) {
   dev_err(&udc->dev->dev,
    "Wait for RESET completed TIMEOUT\n");
   return -ETIMEDOUT;
  }
  loops--;
  udelay(LOOPS_USEC);
 }


 tmp = readl(&udc->op_regs->usbmode);
 tmp |= USBMODE_CTRL_MODE_DEVICE;


 tmp |= USBMODE_SETUP_LOCK_OFF;

 writel(tmp, &udc->op_regs->usbmode);

 writel(0x0, &udc->op_regs->epsetupstat);


 writel(udc->ep_dqh_dma & USB_EP_LIST_ADDRESS_MASK,
  &udc->op_regs->eplistaddr);

 portsc = readl(&udc->op_regs->portsc[0]);
 if (readl(&udc->cap_regs->hcsparams) & HCSPARAMS_PPC)
  portsc &= (~PORTSCX_W1C_BITS | ~PORTSCX_PORT_POWER);

 if (udc->force_fs)
  portsc |= PORTSCX_FORCE_FULL_SPEED_CONNECT;
 else
  portsc &= (~PORTSCX_FORCE_FULL_SPEED_CONNECT);

 writel(portsc, &udc->op_regs->portsc[0]);

 tmp = readl(&udc->op_regs->epctrlx[0]);
 tmp &= ~(EPCTRL_TX_EP_STALL | EPCTRL_RX_EP_STALL);
 writel(tmp, &udc->op_regs->epctrlx[0]);

 return 0;
}
