
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int kobj; int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {int x_res; int y_res; int pixelclock; } ;
struct TYPE_5__ {int dsi_pix_fmt; TYPE_1__ timings; } ;
struct omap_dss_device {int caps; TYPE_2__ panel; int owner; int type; int * driver; struct device* dev; } ;
struct panel_drv_data {struct backlight_device* bldev; scalar_t__ use_dsi_backlight; int ulps_work; int te_timeout_work; int ext_te_gpio; int reset_gpio; int do_update; int lock; TYPE_1__ timings; struct omap_dss_device dssdev; struct platform_device* pdev; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct TYPE_6__ {int brightness; void* power; void* fb_blank; } ;
struct backlight_device {TYPE_3__ props; } ;


 int BACKLIGHT_RAW ;
 int ENODEV ;
 int ENOMEM ;
 void* FB_BLANK_UNBLANK ;
 int GFP_KERNEL ;
 int GPIOF_IN ;
 int GPIOF_OUT_INIT_LOW ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int OMAP_DISPLAY_TYPE_DSI ;
 int OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE ;
 int OMAP_DSS_DISPLAY_CAP_TEAR_ELIM ;
 int OMAP_DSS_DSI_FMT_RGB888 ;
 int PTR_ERR (struct backlight_device*) ;
 int THIS_MODULE ;
 int atomic_set (int *,int ) ;
 struct backlight_device* backlight_device_register (int ,struct device*,struct panel_drv_data*,int *,struct backlight_properties*) ;
 int backlight_device_unregister (struct backlight_device*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int devm_gpio_request_one (struct device*,int ,int ,char*) ;
 struct panel_drv_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,char*,struct panel_drv_data*) ;
 int dsicm_attr_group ;
 int dsicm_bl_ops ;
 int dsicm_bl_update_status (struct backlight_device*) ;
 int dsicm_hw_reset (struct panel_drv_data*) ;
 int dsicm_ops ;
 int dsicm_probe_of (struct platform_device*) ;
 int dsicm_te_isr ;
 int dsicm_te_timeout_work_callback ;
 int dsicm_ulps_work ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_to_irq (int ) ;
 int memset (struct backlight_properties*,int ,int) ;
 int mutex_init (int *) ;
 int omapdss_register_display (struct omap_dss_device*) ;
 int platform_set_drvdata (struct platform_device*,struct panel_drv_data*) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int dsicm_probe(struct platform_device *pdev)
{
 struct backlight_properties props;
 struct panel_drv_data *ddata;
 struct backlight_device *bldev = ((void*)0);
 struct device *dev = &pdev->dev;
 struct omap_dss_device *dssdev;
 int r;

 dev_dbg(dev, "probe\n");

 if (!pdev->dev.of_node)
  return -ENODEV;

 ddata = devm_kzalloc(dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 platform_set_drvdata(pdev, ddata);
 ddata->pdev = pdev;

 r = dsicm_probe_of(pdev);
 if (r)
  return r;

 ddata->timings.x_res = 864;
 ddata->timings.y_res = 480;
 ddata->timings.pixelclock = 864 * 480 * 60;

 dssdev = &ddata->dssdev;
 dssdev->dev = dev;
 dssdev->driver = &dsicm_ops;
 dssdev->panel.timings = ddata->timings;
 dssdev->type = OMAP_DISPLAY_TYPE_DSI;
 dssdev->owner = THIS_MODULE;

 dssdev->panel.dsi_pix_fmt = OMAP_DSS_DSI_FMT_RGB888;
 dssdev->caps = OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE |
  OMAP_DSS_DISPLAY_CAP_TEAR_ELIM;

 r = omapdss_register_display(dssdev);
 if (r) {
  dev_err(dev, "Failed to register panel\n");
  goto err_reg;
 }

 mutex_init(&ddata->lock);

 atomic_set(&ddata->do_update, 0);

 if (gpio_is_valid(ddata->reset_gpio)) {
  r = devm_gpio_request_one(dev, ddata->reset_gpio,
    GPIOF_OUT_INIT_LOW, "taal rst");
  if (r) {
   dev_err(dev, "failed to request reset gpio\n");
   return r;
  }
 }

 if (gpio_is_valid(ddata->ext_te_gpio)) {
  r = devm_gpio_request_one(dev, ddata->ext_te_gpio,
    GPIOF_IN, "taal irq");
  if (r) {
   dev_err(dev, "GPIO request failed\n");
   return r;
  }

  r = devm_request_irq(dev, gpio_to_irq(ddata->ext_te_gpio),
    dsicm_te_isr,
    IRQF_TRIGGER_RISING,
    "taal vsync", ddata);

  if (r) {
   dev_err(dev, "IRQ request failed\n");
   return r;
  }

  INIT_DEFERRABLE_WORK(&ddata->te_timeout_work,
     dsicm_te_timeout_work_callback);

  dev_dbg(dev, "Using GPIO TE\n");
 }

 INIT_DELAYED_WORK(&ddata->ulps_work, dsicm_ulps_work);

 dsicm_hw_reset(ddata);

 if (ddata->use_dsi_backlight) {
  memset(&props, 0, sizeof(struct backlight_properties));
  props.max_brightness = 255;

  props.type = BACKLIGHT_RAW;
  bldev = backlight_device_register(dev_name(dev),
    dev, ddata, &dsicm_bl_ops, &props);
  if (IS_ERR(bldev)) {
   r = PTR_ERR(bldev);
   goto err_reg;
  }

  ddata->bldev = bldev;

  bldev->props.fb_blank = FB_BLANK_UNBLANK;
  bldev->props.power = FB_BLANK_UNBLANK;
  bldev->props.brightness = 255;

  dsicm_bl_update_status(bldev);
 }

 r = sysfs_create_group(&dev->kobj, &dsicm_attr_group);
 if (r) {
  dev_err(dev, "failed to create sysfs files\n");
  goto err_sysfs_create;
 }

 return 0;

err_sysfs_create:
 if (bldev != ((void*)0))
  backlight_device_unregister(bldev);
err_reg:
 return r;
}
