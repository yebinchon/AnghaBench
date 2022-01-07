
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device_node* of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct panel_drv_data {int in; int reset_gpio; } ;
struct device_node {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 struct panel_drv_data* dev_get_drvdata (TYPE_1__*) ;
 int of_get_named_gpio (struct device_node*,char*,int ) ;
 int omapdss_of_find_source_for_first_ep (struct device_node*) ;

__attribute__((used)) static int acx565akm_probe_of(struct spi_device *spi)
{
 struct panel_drv_data *ddata = dev_get_drvdata(&spi->dev);
 struct device_node *np = spi->dev.of_node;

 ddata->reset_gpio = of_get_named_gpio(np, "reset-gpios", 0);

 ddata->in = omapdss_of_find_source_for_first_ep(np);
 if (IS_ERR(ddata->in)) {
  dev_err(&spi->dev, "failed to find video source\n");
  return PTR_ERR(ddata->in);
 }

 return 0;
}
