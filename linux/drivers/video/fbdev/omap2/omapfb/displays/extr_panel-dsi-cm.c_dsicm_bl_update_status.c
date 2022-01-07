
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct panel_drv_data {int lock; scalar_t__ enabled; TYPE_2__* pdev; struct omap_dss_device* in; } ;
struct TYPE_8__ {TYPE_3__* dsi; } ;
struct omap_dss_device {TYPE_4__ ops; } ;
struct TYPE_5__ {scalar_t__ fb_blank; scalar_t__ power; int brightness; } ;
struct backlight_device {TYPE_1__ props; int dev; } ;
struct TYPE_7__ {int (* bus_unlock ) (struct omap_dss_device*) ;int (* bus_lock ) (struct omap_dss_device*) ;} ;
struct TYPE_6__ {int dev; } ;


 int DCS_BRIGHTNESS ;
 scalar_t__ FB_BLANK_UNBLANK ;
 int dev_dbg (int *,char*,int) ;
 struct panel_drv_data* dev_get_drvdata (int *) ;
 int dsicm_dcs_write_1 (struct panel_drv_data*,int ,int) ;
 int dsicm_wake_up (struct panel_drv_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct omap_dss_device*) ;
 int stub2 (struct omap_dss_device*) ;

__attribute__((used)) static int dsicm_bl_update_status(struct backlight_device *dev)
{
 struct panel_drv_data *ddata = dev_get_drvdata(&dev->dev);
 struct omap_dss_device *in = ddata->in;
 int r;
 int level;

 if (dev->props.fb_blank == FB_BLANK_UNBLANK &&
   dev->props.power == FB_BLANK_UNBLANK)
  level = dev->props.brightness;
 else
  level = 0;

 dev_dbg(&ddata->pdev->dev, "update brightness to %d\n", level);

 mutex_lock(&ddata->lock);

 if (ddata->enabled) {
  in->ops.dsi->bus_lock(in);

  r = dsicm_wake_up(ddata);
  if (!r)
   r = dsicm_dcs_write_1(ddata, DCS_BRIGHTNESS, level);

  in->ops.dsi->bus_unlock(in);
 } else {
  r = 0;
 }

 mutex_unlock(&ddata->lock);

 return r;
}
