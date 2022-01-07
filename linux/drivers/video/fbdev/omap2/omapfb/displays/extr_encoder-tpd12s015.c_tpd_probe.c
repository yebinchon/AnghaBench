
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int * hdmi; } ;
struct omap_dss_device {int port_num; int owner; void* output_type; void* type; TYPE_2__* dev; TYPE_1__ ops; } ;
struct panel_drv_data {int in; struct omap_dss_device dssdev; struct gpio_desc* hpd_gpio; struct gpio_desc* ls_oe_gpio; struct gpio_desc* ct_cp_hpd_gpio; } ;
struct gpio_desc {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 void* OMAP_DISPLAY_TYPE_HDMI ;
 int PTR_ERR (struct gpio_desc*) ;
 int THIS_MODULE ;
 int dev_err (TYPE_2__*,char*) ;
 struct gpio_desc* devm_gpiod_get_index (TYPE_2__*,int *,int,int ) ;
 struct gpio_desc* devm_gpiod_get_index_optional (TYPE_2__*,int *,int,int ) ;
 struct panel_drv_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 int omap_dss_put_device (int ) ;
 int omapdss_register_output (struct omap_dss_device*) ;
 int platform_set_drvdata (struct platform_device*,struct panel_drv_data*) ;
 int tpd_hdmi_ops ;
 int tpd_probe_of (struct platform_device*) ;

__attribute__((used)) static int tpd_probe(struct platform_device *pdev)
{
 struct omap_dss_device *dssdev;
 struct panel_drv_data *ddata;
 int r;
 struct gpio_desc *gpio;

 ddata = devm_kzalloc(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 platform_set_drvdata(pdev, ddata);

 if (pdev->dev.of_node) {
  r = tpd_probe_of(pdev);
  if (r)
   return r;
 } else {
  return -ENODEV;
 }

 gpio = devm_gpiod_get_index_optional(&pdev->dev, ((void*)0), 0,
  GPIOD_OUT_LOW);
 if (IS_ERR(gpio)) {
  r = PTR_ERR(gpio);
  goto err_gpio;
 }

 ddata->ct_cp_hpd_gpio = gpio;

 gpio = devm_gpiod_get_index_optional(&pdev->dev, ((void*)0), 1,
  GPIOD_OUT_LOW);
 if (IS_ERR(gpio)) {
  r = PTR_ERR(gpio);
  goto err_gpio;
 }

 ddata->ls_oe_gpio = gpio;

 gpio = devm_gpiod_get_index(&pdev->dev, ((void*)0), 2,
  GPIOD_IN);
 if (IS_ERR(gpio)) {
  r = PTR_ERR(gpio);
  goto err_gpio;
 }

 ddata->hpd_gpio = gpio;

 dssdev = &ddata->dssdev;
 dssdev->ops.hdmi = &tpd_hdmi_ops;
 dssdev->dev = &pdev->dev;
 dssdev->type = OMAP_DISPLAY_TYPE_HDMI;
 dssdev->output_type = OMAP_DISPLAY_TYPE_HDMI;
 dssdev->owner = THIS_MODULE;
 dssdev->port_num = 1;

 r = omapdss_register_output(dssdev);
 if (r) {
  dev_err(&pdev->dev, "Failed to register output\n");
  goto err_reg;
 }

 return 0;
err_reg:
err_gpio:
 omap_dss_put_device(ddata->in);
 return r;
}
