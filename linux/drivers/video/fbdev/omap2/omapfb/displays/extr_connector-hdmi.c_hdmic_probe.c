
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_5__ {void* timings; } ;
struct omap_dss_device {TYPE_1__ panel; int owner; int type; TYPE_2__* dev; int * driver; } ;
struct panel_drv_data {int in; struct omap_dss_device dssdev; void* timings; int hpd_gpio; TYPE_2__* dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOF_DIR_IN ;
 int OMAP_DISPLAY_TYPE_HDMI ;
 int THIS_MODULE ;
 int dev_err (TYPE_2__*,char*) ;
 int devm_gpio_request_one (TYPE_2__*,int ,int ,char*) ;
 struct panel_drv_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 void* hdmic_default_timings ;
 int hdmic_driver ;
 int hdmic_probe_of (struct platform_device*) ;
 int omap_dss_put_device (int ) ;
 int omapdss_register_display (struct omap_dss_device*) ;
 int platform_set_drvdata (struct platform_device*,struct panel_drv_data*) ;

__attribute__((used)) static int hdmic_probe(struct platform_device *pdev)
{
 struct panel_drv_data *ddata;
 struct omap_dss_device *dssdev;
 int r;

 if (!pdev->dev.of_node)
  return -ENODEV;

 ddata = devm_kzalloc(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 platform_set_drvdata(pdev, ddata);
 ddata->dev = &pdev->dev;

 r = hdmic_probe_of(pdev);
 if (r)
  return r;

 if (gpio_is_valid(ddata->hpd_gpio)) {
  r = devm_gpio_request_one(&pdev->dev, ddata->hpd_gpio,
    GPIOF_DIR_IN, "hdmi_hpd");
  if (r)
   goto err_reg;
 }

 ddata->timings = hdmic_default_timings;

 dssdev = &ddata->dssdev;
 dssdev->driver = &hdmic_driver;
 dssdev->dev = &pdev->dev;
 dssdev->type = OMAP_DISPLAY_TYPE_HDMI;
 dssdev->owner = THIS_MODULE;
 dssdev->panel.timings = hdmic_default_timings;

 r = omapdss_register_display(dssdev);
 if (r) {
  dev_err(&pdev->dev, "Failed to register panel\n");
  goto err_reg;
 }

 return 0;
err_reg:
 omap_dss_put_device(ddata->in);
 return r;
}
