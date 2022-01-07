
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifx_spi_device {int power_status; int power_lock; TYPE_1__* spi_dev; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_put (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
ifx_spi_power_state_clear(struct ifx_spi_device *ifx_dev, unsigned char val)
{
 unsigned long flags;

 spin_lock_irqsave(&ifx_dev->power_lock, flags);

 if (ifx_dev->power_status) {
  ifx_dev->power_status &= ~val;
  if (!ifx_dev->power_status)
   pm_runtime_put(&ifx_dev->spi_dev->dev);
 }

 spin_unlock_irqrestore(&ifx_dev->power_lock, flags);
}
