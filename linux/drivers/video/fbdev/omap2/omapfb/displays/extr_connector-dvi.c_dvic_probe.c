
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {void* timings; } ;
struct omap_dss_device {TYPE_1__ panel; int owner; int type; TYPE_2__* dev; int * driver; } ;
struct panel_drv_data {int i2c_adapter; int in; struct omap_dss_device dssdev; void* timings; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int OMAP_DISPLAY_TYPE_DVI ;
 int THIS_MODULE ;
 int dev_err (TYPE_2__*,char*) ;
 struct panel_drv_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 void* dvic_default_timings ;
 int dvic_driver ;
 int dvic_probe_of (struct platform_device*) ;
 int i2c_put_adapter (int ) ;
 int omap_dss_put_device (int ) ;
 int omapdss_register_display (struct omap_dss_device*) ;
 int platform_set_drvdata (struct platform_device*,struct panel_drv_data*) ;

__attribute__((used)) static int dvic_probe(struct platform_device *pdev)
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

 r = dvic_probe_of(pdev);
 if (r)
  return r;

 ddata->timings = dvic_default_timings;

 dssdev = &ddata->dssdev;
 dssdev->driver = &dvic_driver;
 dssdev->dev = &pdev->dev;
 dssdev->type = OMAP_DISPLAY_TYPE_DVI;
 dssdev->owner = THIS_MODULE;
 dssdev->panel.timings = dvic_default_timings;

 r = omapdss_register_display(dssdev);
 if (r) {
  dev_err(&pdev->dev, "Failed to register panel\n");
  goto err_reg;
 }

 return 0;

err_reg:
 omap_dss_put_device(ddata->in);

 i2c_put_adapter(ddata->i2c_adapter);

 return r;
}
