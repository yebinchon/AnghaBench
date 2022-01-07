
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int dummy; } ;
struct spi_device {struct spi_controller* controller; } ;
struct spi_controller {int bus_lock_spinlock; } ;


 int __spi_async (struct spi_device*,struct spi_message*) ;
 int __spi_validate (struct spi_device*,struct spi_message*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int spi_async_locked(struct spi_device *spi, struct spi_message *message)
{
 struct spi_controller *ctlr = spi->controller;
 int ret;
 unsigned long flags;

 ret = __spi_validate(spi, message);
 if (ret != 0)
  return ret;

 spin_lock_irqsave(&ctlr->bus_lock_spinlock, flags);

 ret = __spi_async(spi, message);

 spin_unlock_irqrestore(&ctlr->bus_lock_spinlock, flags);

 return ret;

}
