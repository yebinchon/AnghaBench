
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct panel_drv_data {int reset_gpio; int ext_te_gpio; struct omap_dss_device* in; } ;
struct omap_dss_device {int dummy; } ;
struct device_node {int dummy; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (struct omap_dss_device*) ;
 int PTR_ERR (struct omap_dss_device*) ;
 int dev_err (TYPE_1__*,char*) ;
 scalar_t__ gpio_is_valid (int) ;
 int of_get_named_gpio (struct device_node*,char*,int ) ;
 struct omap_dss_device* omapdss_of_find_source_for_first_ep (struct device_node*) ;
 struct panel_drv_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int dsicm_probe_of(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 struct panel_drv_data *ddata = platform_get_drvdata(pdev);
 struct omap_dss_device *in;
 int gpio;

 gpio = of_get_named_gpio(node, "reset-gpios", 0);
 if (!gpio_is_valid(gpio)) {
  dev_err(&pdev->dev, "failed to parse reset gpio\n");
  return gpio;
 }
 ddata->reset_gpio = gpio;

 gpio = of_get_named_gpio(node, "te-gpios", 0);
 if (gpio_is_valid(gpio) || gpio == -ENOENT) {
  ddata->ext_te_gpio = gpio;
 } else {
  dev_err(&pdev->dev, "failed to parse TE gpio\n");
  return gpio;
 }

 in = omapdss_of_find_source_for_first_ep(node);
 if (IS_ERR(in)) {
  dev_err(&pdev->dev, "failed to find video source\n");
  return PTR_ERR(in);
 }

 ddata->in = in;



 return 0;
}
