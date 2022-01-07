
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int * atv; } ;
struct omap_dss_device {int owner; void* output_type; void* type; TYPE_2__* dev; TYPE_1__ ops; } ;
struct panel_drv_data {struct omap_dss_device* in; struct omap_dss_device dssdev; struct omap_dss_device* enable_gpio; } ;
struct gpio_desc {int owner; void* output_type; void* type; TYPE_2__* dev; TYPE_1__ ops; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct omap_dss_device*) ;
 void* OMAP_DISPLAY_TYPE_VENC ;
 int PTR_ERR (struct omap_dss_device*) ;
 int THIS_MODULE ;
 int dev_dbg (TYPE_2__*,char*) ;
 int dev_err (TYPE_2__*,char*) ;
 struct omap_dss_device* devm_gpiod_get_optional (TYPE_2__*,char*,int ) ;
 struct panel_drv_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 int omap_dss_put_device (struct omap_dss_device*) ;
 struct omap_dss_device* omapdss_of_find_source_for_first_ep (struct device_node*) ;
 int omapdss_register_output (struct omap_dss_device*) ;
 int opa362_atv_ops ;
 int platform_set_drvdata (struct platform_device*,struct panel_drv_data*) ;

__attribute__((used)) static int opa362_probe(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 struct panel_drv_data *ddata;
 struct omap_dss_device *dssdev, *in;
 struct gpio_desc *gpio;
 int r;

 dev_dbg(&pdev->dev, "probe\n");

 if (node == ((void*)0)) {
  dev_err(&pdev->dev, "Unable to find device tree\n");
  return -EINVAL;
 }

 ddata = devm_kzalloc(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 platform_set_drvdata(pdev, ddata);

 gpio = devm_gpiod_get_optional(&pdev->dev, "enable", GPIOD_OUT_LOW);
 if (IS_ERR(gpio))
  return PTR_ERR(gpio);

 ddata->enable_gpio = gpio;

 in = omapdss_of_find_source_for_first_ep(node);
 if (IS_ERR(in)) {
  dev_err(&pdev->dev, "failed to find video source\n");
  return PTR_ERR(in);
 }

 ddata->in = in;

 dssdev = &ddata->dssdev;
 dssdev->ops.atv = &opa362_atv_ops;
 dssdev->dev = &pdev->dev;
 dssdev->type = OMAP_DISPLAY_TYPE_VENC;
 dssdev->output_type = OMAP_DISPLAY_TYPE_VENC;
 dssdev->owner = THIS_MODULE;

 r = omapdss_register_output(dssdev);
 if (r) {
  dev_err(&pdev->dev, "Failed to register output\n");
  goto err_reg;
 }

 return 0;
err_reg:
 omap_dss_put_device(ddata->in);
 return r;
}
