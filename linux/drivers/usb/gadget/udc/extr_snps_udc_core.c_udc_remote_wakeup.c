
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct udc {int lock; TYPE_1__* regs; } ;
struct TYPE_2__ {int ctl; } ;


 int AMD_BIT (int ) ;
 int AMD_CLEAR_BIT (int ) ;
 int DBG (struct udc*,char*) ;
 int UDC_DEVCTL_RES ;
 int readl (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,int *) ;

__attribute__((used)) static int udc_remote_wakeup(struct udc *dev)
{
 unsigned long flags;
 u32 tmp;

 DBG(dev, "UDC initiates remote wakeup\n");

 spin_lock_irqsave(&dev->lock, flags);

 tmp = readl(&dev->regs->ctl);
 tmp |= AMD_BIT(UDC_DEVCTL_RES);
 writel(tmp, &dev->regs->ctl);
 tmp &= AMD_CLEAR_BIT(UDC_DEVCTL_RES);
 writel(tmp, &dev->regs->ctl);

 spin_unlock_irqrestore(&dev->lock, flags);
 return 0;
}
