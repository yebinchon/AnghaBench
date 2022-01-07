
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct panel_drv_data {int lock; int channel; int do_update; int te_timeout_work; int ext_te_gpio; scalar_t__ te_enabled; int enabled; TYPE_1__* pdev; struct omap_dss_device* in; } ;
struct TYPE_10__ {TYPE_4__* dsi; } ;
struct TYPE_7__ {int y_res; int x_res; } ;
struct TYPE_8__ {TYPE_2__ timings; } ;
struct omap_dss_device {TYPE_5__ ops; TYPE_3__ panel; } ;
struct TYPE_9__ {int (* update ) (struct omap_dss_device*,int ,int ,struct panel_drv_data*) ;int (* bus_unlock ) (struct omap_dss_device*) ;int (* bus_lock ) (struct omap_dss_device*) ;} ;
struct TYPE_6__ {int dev; } ;


 int atomic_set (int *,int) ;
 int dev_dbg (int *,char*,int ,int ,int ,int ) ;
 int dsicm_framedone_cb ;
 int dsicm_set_update_window (struct panel_drv_data*,int ,int ,int ,int ) ;
 int dsicm_wake_up (struct panel_drv_data*) ;
 scalar_t__ gpio_is_valid (int ) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int ) ;
 int stub1 (struct omap_dss_device*) ;
 int stub2 (struct omap_dss_device*,int ,int ,struct panel_drv_data*) ;
 int stub3 (struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsicm_update(struct omap_dss_device *dssdev,
        u16 x, u16 y, u16 w, u16 h)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;
 int r;

 dev_dbg(&ddata->pdev->dev, "update %d, %d, %d x %d\n", x, y, w, h);

 mutex_lock(&ddata->lock);
 in->ops.dsi->bus_lock(in);

 r = dsicm_wake_up(ddata);
 if (r)
  goto err;

 if (!ddata->enabled) {
  r = 0;
  goto err;
 }


 r = dsicm_set_update_window(ddata, 0, 0,
   dssdev->panel.timings.x_res,
   dssdev->panel.timings.y_res);
 if (r)
  goto err;

 if (ddata->te_enabled && gpio_is_valid(ddata->ext_te_gpio)) {
  schedule_delayed_work(&ddata->te_timeout_work,
    msecs_to_jiffies(250));
  atomic_set(&ddata->do_update, 1);
 } else {
  r = in->ops.dsi->update(in, ddata->channel, dsicm_framedone_cb,
    ddata);
  if (r)
   goto err;
 }


 mutex_unlock(&ddata->lock);
 return 0;
err:
 in->ops.dsi->bus_unlock(in);
 mutex_unlock(&ddata->lock);
 return r;
}
