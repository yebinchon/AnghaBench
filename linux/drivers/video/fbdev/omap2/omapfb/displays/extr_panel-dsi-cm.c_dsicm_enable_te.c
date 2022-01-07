
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_drv_data {int te_enabled; int lock; scalar_t__ enabled; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* dsi; } ;
struct omap_dss_device {TYPE_2__ ops; } ;
struct TYPE_3__ {int (* bus_unlock ) (struct omap_dss_device*) ;int (* bus_lock ) (struct omap_dss_device*) ;} ;


 int _dsicm_enable_te (struct panel_drv_data*,int) ;
 int dsicm_wake_up (struct panel_drv_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct omap_dss_device*) ;
 int stub2 (struct omap_dss_device*) ;
 int stub3 (struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsicm_enable_te(struct omap_dss_device *dssdev, bool enable)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;
 int r;

 mutex_lock(&ddata->lock);

 if (ddata->te_enabled == enable)
  goto end;

 in->ops.dsi->bus_lock(in);

 if (ddata->enabled) {
  r = dsicm_wake_up(ddata);
  if (r)
   goto err;

  r = _dsicm_enable_te(ddata, enable);
  if (r)
   goto err;
 }

 ddata->te_enabled = enable;

 in->ops.dsi->bus_unlock(in);
end:
 mutex_unlock(&ddata->lock);

 return 0;
err:
 in->ops.dsi->bus_unlock(in);
 mutex_unlock(&ddata->lock);

 return r;
}
