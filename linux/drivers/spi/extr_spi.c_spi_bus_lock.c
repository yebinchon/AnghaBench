
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int bus_lock_flag; int bus_lock_spinlock; int bus_lock_mutex; } ;


 int mutex_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int spi_bus_lock(struct spi_controller *ctlr)
{
 unsigned long flags;

 mutex_lock(&ctlr->bus_lock_mutex);

 spin_lock_irqsave(&ctlr->bus_lock_spinlock, flags);
 ctlr->bus_lock_flag = 1;
 spin_unlock_irqrestore(&ctlr->bus_lock_spinlock, flags);



 return 0;
}
