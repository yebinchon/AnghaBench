
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1362_hcd {int lock; } ;


 int __isp1362_sw_reset (struct isp1362_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void isp1362_sw_reset(struct isp1362_hcd *isp1362_hcd)
{
 unsigned long flags;

 spin_lock_irqsave(&isp1362_hcd->lock, flags);
 __isp1362_sw_reset(isp1362_hcd);
 spin_unlock_irqrestore(&isp1362_hcd->lock, flags);
}
