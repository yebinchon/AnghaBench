
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;


 int __spi_queued_transfer (struct spi_device*,struct spi_message*,int) ;

__attribute__((used)) static int spi_queued_transfer(struct spi_device *spi, struct spi_message *msg)
{
 return __spi_queued_transfer(spi, msg, 1);
}
