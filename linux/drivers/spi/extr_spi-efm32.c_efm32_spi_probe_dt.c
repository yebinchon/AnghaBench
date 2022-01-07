
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct spi_master {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int location; } ;
struct efm32_spi_ddata {TYPE_1__ pdata; } ;
struct device_node {int dummy; } ;


 int dev_dbg (TYPE_2__*,char*,int ) ;
 int dev_info (TYPE_2__*,char*,int ) ;
 int efm32_spi_get_configured_location (struct efm32_spi_ddata*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static void efm32_spi_probe_dt(struct platform_device *pdev,
  struct spi_master *master, struct efm32_spi_ddata *ddata)
{
 struct device_node *np = pdev->dev.of_node;
 u32 location;
 int ret;

 ret = of_property_read_u32(np, "energymicro,location", &location);

 if (ret)

  ret = of_property_read_u32(np, "efm32,location", &location);

 if (ret)

  ret = of_property_read_u32(np, "location", &location);

 if (!ret) {
  dev_dbg(&pdev->dev, "using location %u\n", location);
 } else {

  location = efm32_spi_get_configured_location(ddata);

  dev_info(&pdev->dev, "fall back to location %u\n", location);
 }

 ddata->pdata.location = location;
}
