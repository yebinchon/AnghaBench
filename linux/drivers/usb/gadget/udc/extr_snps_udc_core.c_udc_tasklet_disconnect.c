
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct udc {int lock; TYPE_2__* regs; int * ep; int gadget; TYPE_1__* driver; } ;
struct TYPE_4__ {int cfg; } ;
struct TYPE_3__ {int (* disconnect ) (int *) ;} ;


 size_t AMD_ADDBITS (size_t,int ,int ) ;
 int DBG (struct udc*,char*) ;
 int UDC_DEVCFG_SPD ;
 int UDC_DEVCFG_SPD_FS ;
 size_t UDC_EP0IN_IX ;
 size_t UDC_EP_NUM ;
 int empty_req_queue (int *) ;
 int ep_init (TYPE_2__*,int *) ;
 size_t readl (int *) ;
 int soft_reset_occured ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (int *) ;
 int udc_enable_dev_setup_interrupts (struct udc*) ;
 int udc_soft_reset (struct udc*) ;
 scalar_t__ use_fullspeed ;
 int writel (size_t,int *) ;

__attribute__((used)) static void udc_tasklet_disconnect(unsigned long par)
{
 struct udc *dev = (struct udc *)(*((struct udc **) par));
 u32 tmp;

 DBG(dev, "Tasklet disconnect\n");
 spin_lock_irq(&dev->lock);

 if (dev->driver) {
  spin_unlock(&dev->lock);
  dev->driver->disconnect(&dev->gadget);
  spin_lock(&dev->lock);


  for (tmp = 0; tmp < UDC_EP_NUM; tmp++)
   empty_req_queue(&dev->ep[tmp]);

 }


 ep_init(dev->regs,
   &dev->ep[UDC_EP0IN_IX]);


 if (!soft_reset_occured) {

  udc_soft_reset(dev);
  soft_reset_occured++;
 }


 udc_enable_dev_setup_interrupts(dev);

 if (use_fullspeed) {
  tmp = readl(&dev->regs->cfg);
  tmp = AMD_ADDBITS(tmp, UDC_DEVCFG_SPD_FS, UDC_DEVCFG_SPD);
  writel(tmp, &dev->regs->cfg);
 }

 spin_unlock_irq(&dev->lock);
}
