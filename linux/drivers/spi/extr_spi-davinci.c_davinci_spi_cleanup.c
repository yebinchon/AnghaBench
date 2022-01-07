
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ of_node; } ;
struct spi_device {TYPE_1__ dev; struct davinci_spi_config* controller_data; } ;
struct davinci_spi_config {int dummy; } ;


 int kfree (struct davinci_spi_config*) ;

__attribute__((used)) static void davinci_spi_cleanup(struct spi_device *spi)
{
 struct davinci_spi_config *spicfg = spi->controller_data;

 spi->controller_data = ((void*)0);
 if (spi->dev.of_node)
  kfree(spicfg);
}
