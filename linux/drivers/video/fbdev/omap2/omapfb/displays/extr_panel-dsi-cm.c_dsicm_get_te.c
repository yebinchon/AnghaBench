
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int te_enabled; int lock; } ;
struct omap_dss_device {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsicm_get_te(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 int r;

 mutex_lock(&ddata->lock);
 r = ddata->te_enabled;
 mutex_unlock(&ddata->lock);

 return r;
}
