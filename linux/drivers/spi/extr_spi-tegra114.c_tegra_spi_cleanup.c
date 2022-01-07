
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_spi_client_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;
struct spi_device {TYPE_1__ dev; struct tegra_spi_client_data* controller_data; } ;


 int kfree (struct tegra_spi_client_data*) ;

__attribute__((used)) static void tegra_spi_cleanup(struct spi_device *spi)
{
 struct tegra_spi_client_data *cdata = spi->controller_data;

 spi->controller_data = ((void*)0);
 if (spi->dev.of_node)
  kfree(cdata);
}
