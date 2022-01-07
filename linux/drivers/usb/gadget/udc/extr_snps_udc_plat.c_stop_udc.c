
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct udc {int dev; int lock; scalar_t__ connected; int * ep; int gadget; TYPE_2__* driver; TYPE_1__* regs; } ;
struct TYPE_4__ {int (* disconnect ) (int *) ;} ;
struct TYPE_3__ {int ctl; } ;


 int AMD_BIT (int ) ;
 int UDC_DEVCTL_SRX_FLUSH ;
 int UDC_EP_NUM ;
 int dev_dbg (int ,char*) ;
 int dev_info (int ,char*) ;
 int empty_req_queue (int *) ;
 int readl (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;
 int udc_mask_unused_interrupts (struct udc*) ;
 int writel (int ,int *) ;

__attribute__((used)) static void stop_udc(struct udc *udc)
{
 int tmp;
 u32 reg;

 spin_lock(&udc->lock);


 reg = readl(&udc->regs->ctl);
 reg |= AMD_BIT(UDC_DEVCTL_SRX_FLUSH);
 writel(reg, &udc->regs->ctl);

 reg = readl(&udc->regs->ctl);
 reg &= ~(AMD_BIT(UDC_DEVCTL_SRX_FLUSH));
 writel(reg, &udc->regs->ctl);
 dev_dbg(udc->dev, "ep rx queue flushed\n");




 udc_mask_unused_interrupts(udc);


 if (udc->driver) {
  spin_unlock(&udc->lock);
  udc->driver->disconnect(&udc->gadget);
  spin_lock(&udc->lock);


  for (tmp = 0; tmp < UDC_EP_NUM; tmp++)
   empty_req_queue(&udc->ep[tmp]);
 }
 udc->connected = 0;

 spin_unlock(&udc->lock);
 dev_info(udc->dev, "Device disconnected\n");
}
