
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct panel_drv_data {int lock; TYPE_3__* pdev; struct omap_dss_device* in; } ;
struct TYPE_5__ {TYPE_1__* dsi; } ;
struct omap_dss_device {int state; TYPE_2__ ops; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int (* bus_unlock ) (struct omap_dss_device*) ;int (* bus_lock ) (struct omap_dss_device*) ;} ;


 int OMAP_DSS_DISPLAY_DISABLED ;
 int dev_dbg (int *,char*) ;
 int dsicm_cancel_ulps_work (struct panel_drv_data*) ;
 int dsicm_power_off (struct panel_drv_data*) ;
 int dsicm_wake_up (struct panel_drv_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ omapdss_device_is_enabled (struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*) ;
 int stub2 (struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static void dsicm_disable(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;
 int r;

 dev_dbg(&ddata->pdev->dev, "disable\n");

 mutex_lock(&ddata->lock);

 dsicm_cancel_ulps_work(ddata);

 in->ops.dsi->bus_lock(in);

 if (omapdss_device_is_enabled(dssdev)) {
  r = dsicm_wake_up(ddata);
  if (!r)
   dsicm_power_off(ddata);
 }

 in->ops.dsi->bus_unlock(in);

 dssdev->state = OMAP_DSS_DISPLAY_DISABLED;

 mutex_unlock(&ddata->lock);
}
