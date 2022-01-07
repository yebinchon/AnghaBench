
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct omap_dss_device {int name; } ;
struct panel_drv_data {struct omap_dss_device dssdev; int invert_polarity; struct omap_dss_device* in; } ;
struct connector_atv_platform_data {int name; int invert_polarity; int source; } ;


 int EPROBE_DEFER ;
 int dev_err (int *,char*) ;
 struct connector_atv_platform_data* dev_get_platdata (int *) ;
 struct omap_dss_device* omap_dss_find_output (int ) ;
 struct panel_drv_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int tvc_probe_pdata(struct platform_device *pdev)
{
 struct panel_drv_data *ddata = platform_get_drvdata(pdev);
 struct connector_atv_platform_data *pdata;
 struct omap_dss_device *in, *dssdev;

 pdata = dev_get_platdata(&pdev->dev);

 in = omap_dss_find_output(pdata->source);
 if (in == ((void*)0)) {
  dev_err(&pdev->dev, "Failed to find video source\n");
  return -EPROBE_DEFER;
 }

 ddata->in = in;

 ddata->invert_polarity = pdata->invert_polarity;

 dssdev = &ddata->dssdev;
 dssdev->name = pdata->name;

 return 0;
}
