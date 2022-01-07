
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_7__ {int data_lines; } ;
struct TYPE_8__ {TYPE_2__ dpi; } ;
struct TYPE_6__ {int timings; } ;
struct omap_dss_device {TYPE_3__ phy; TYPE_1__ panel; int owner; int type; int * driver; TYPE_4__* dev; } ;
struct panel_drv_data {int in; int data_lines; int videomode; struct omap_dss_device dssdev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int OMAP_DISPLAY_TYPE_DPI ;
 int THIS_MODULE ;
 int dev_err (TYPE_4__*,char*) ;
 struct panel_drv_data* devm_kzalloc (TYPE_4__*,int,int ) ;
 int omap_dss_put_device (int ) ;
 int omapdss_register_display (struct omap_dss_device*) ;
 int platform_set_drvdata (struct platform_device*,struct panel_drv_data*) ;
 int sharp_ls_ops ;
 int sharp_ls_probe_of (struct platform_device*) ;
 int sharp_ls_timings ;

__attribute__((used)) static int sharp_ls_probe(struct platform_device *pdev)
{
 struct panel_drv_data *ddata;
 struct omap_dss_device *dssdev;
 int r;

 if (!pdev->dev.of_node)
  return -ENODEV;

 ddata = devm_kzalloc(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
 if (ddata == ((void*)0))
  return -ENOMEM;

 platform_set_drvdata(pdev, ddata);

 r = sharp_ls_probe_of(pdev);
 if (r)
  return r;

 ddata->videomode = sharp_ls_timings;

 dssdev = &ddata->dssdev;
 dssdev->dev = &pdev->dev;
 dssdev->driver = &sharp_ls_ops;
 dssdev->type = OMAP_DISPLAY_TYPE_DPI;
 dssdev->owner = THIS_MODULE;
 dssdev->panel.timings = ddata->videomode;
 dssdev->phy.dpi.data_lines = ddata->data_lines;

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
