
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct panel_drv_data {int hpd_gpio; struct omap_dss_device* in; } ;
struct omap_dss_device {int dummy; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct omap_dss_device*) ;
 int PTR_ERR (struct omap_dss_device*) ;
 int dev_err (TYPE_1__*,char*) ;
 scalar_t__ gpio_is_valid (int) ;
 int of_get_named_gpio (struct device_node*,char*,int ) ;
 struct omap_dss_device* omapdss_of_find_source_for_first_ep (struct device_node*) ;
 struct panel_drv_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int hdmic_probe_of(struct platform_device *pdev)
{
 struct panel_drv_data *ddata = platform_get_drvdata(pdev);
 struct device_node *node = pdev->dev.of_node;
 struct omap_dss_device *in;
 int gpio;


 gpio = of_get_named_gpio(node, "hpd-gpios", 0);
 if (gpio_is_valid(gpio))
  ddata->hpd_gpio = gpio;
 else
  ddata->hpd_gpio = -ENODEV;

 in = omapdss_of_find_source_for_first_ep(node);
 if (IS_ERR(in)) {
  dev_err(&pdev->dev, "failed to find video source\n");
  return PTR_ERR(in);
 }

 ddata->in = in;

 return 0;
}
