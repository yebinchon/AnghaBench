
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;


 int __spi_sync (struct spi_device*,struct spi_message*) ;

int spi_sync_locked(struct spi_device *spi, struct spi_message *message)
{
 return __spi_sync(spi, message);
}
