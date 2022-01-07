
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_message {int dummy; } ;
struct spi_device {TYPE_1__* controller; } ;
struct TYPE_2__ {int bus_lock_mutex; } ;


 int __spi_sync (struct spi_device*,struct spi_message*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int spi_sync(struct spi_device *spi, struct spi_message *message)
{
 int ret;

 mutex_lock(&spi->controller->bus_lock_mutex);
 ret = __spi_sync(spi, message);
 mutex_unlock(&spi->controller->bus_lock_mutex);

 return ret;
}
