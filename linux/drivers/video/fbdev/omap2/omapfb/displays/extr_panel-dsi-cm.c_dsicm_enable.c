
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


 int ENODEV ;
 int OMAP_DSS_DISPLAY_ACTIVE ;
 int dev_dbg (int *,char*) ;
 int dsicm_power_on (struct panel_drv_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omapdss_device_is_connected (struct omap_dss_device*) ;
 scalar_t__ omapdss_device_is_enabled (struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*) ;
 int stub2 (struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsicm_enable(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;
 int r;

 dev_dbg(&ddata->pdev->dev, "enable\n");

 mutex_lock(&ddata->lock);

 if (!omapdss_device_is_connected(dssdev)) {
  r = -ENODEV;
  goto err;
 }

 if (omapdss_device_is_enabled(dssdev)) {
  r = 0;
  goto err;
 }

 in->ops.dsi->bus_lock(in);

 r = dsicm_power_on(ddata);

 in->ops.dsi->bus_unlock(in);

 if (r)
  goto err;

 dssdev->state = OMAP_DSS_DISPLAY_ACTIVE;

 mutex_unlock(&ddata->lock);

 return 0;
err:
 dev_dbg(&ddata->pdev->dev, "enable failed\n");
 mutex_unlock(&ddata->lock);
 return r;
}
