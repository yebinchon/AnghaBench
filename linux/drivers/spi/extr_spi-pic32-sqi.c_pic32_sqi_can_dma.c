
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int dummy; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;



__attribute__((used)) static bool pic32_sqi_can_dma(struct spi_master *master,
         struct spi_device *spi,
         struct spi_transfer *x)
{

 return 1;
}
