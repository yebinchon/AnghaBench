
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int bus_lock_mutex; scalar_t__ bus_lock_flag; } ;


 int mutex_unlock (int *) ;

int spi_bus_unlock(struct spi_controller *ctlr)
{
 ctlr->bus_lock_flag = 0;

 mutex_unlock(&ctlr->bus_lock_mutex);

 return 0;
}
