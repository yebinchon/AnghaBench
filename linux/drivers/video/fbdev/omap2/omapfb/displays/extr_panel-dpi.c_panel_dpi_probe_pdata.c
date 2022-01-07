
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int dummy; } ;
struct platform_device {int dev; } ;
struct omap_dss_device {int name; } ;
struct panel_drv_data {struct omap_dss_device* in; int backlight_gpio; int enable_gpio; struct omap_dss_device dssdev; int videomode; int data_lines; } ;
struct panel_dpi_platform_data {int backlight_gpio; int enable_gpio; int name; int display_timing; int data_lines; int source; } ;


 int EPROBE_DEFER ;
 int GPIOF_OUT_INIT_LOW ;
 int dev_err (int *,char*,int ) ;
 struct panel_dpi_platform_data* dev_get_platdata (int *) ;
 int devm_gpio_request_one (int *,int ,int ,char*) ;
 int gpio_to_desc (int ) ;
 struct omap_dss_device* omap_dss_find_output (int ) ;
 int omap_dss_put_device (struct omap_dss_device*) ;
 struct panel_drv_data* platform_get_drvdata (struct platform_device*) ;
 int videomode_from_timing (int ,struct videomode*) ;
 int videomode_to_omap_video_timings (struct videomode*,int *) ;

__attribute__((used)) static int panel_dpi_probe_pdata(struct platform_device *pdev)
{
 const struct panel_dpi_platform_data *pdata;
 struct panel_drv_data *ddata = platform_get_drvdata(pdev);
 struct omap_dss_device *dssdev, *in;
 struct videomode vm;
 int r;

 pdata = dev_get_platdata(&pdev->dev);

 in = omap_dss_find_output(pdata->source);
 if (in == ((void*)0)) {
  dev_err(&pdev->dev, "failed to find video source '%s'\n",
    pdata->source);
  return -EPROBE_DEFER;
 }

 ddata->in = in;

 ddata->data_lines = pdata->data_lines;

 videomode_from_timing(pdata->display_timing, &vm);
 videomode_to_omap_video_timings(&vm, &ddata->videomode);

 dssdev = &ddata->dssdev;
 dssdev->name = pdata->name;

 r = devm_gpio_request_one(&pdev->dev, pdata->enable_gpio,
     GPIOF_OUT_INIT_LOW, "panel enable");
 if (r)
  goto err_gpio;

 ddata->enable_gpio = gpio_to_desc(pdata->enable_gpio);

 ddata->backlight_gpio = pdata->backlight_gpio;

 return 0;

err_gpio:
 omap_dss_put_device(ddata->in);
 return r;
}
