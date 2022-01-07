
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct dsi_data {int lock; } ;


 int DSSDBG (char*) ;
 int WARN_ON (int) ;
 int dsi_bus_is_locked (struct platform_device*) ;
 int dsi_display_uninit_dsi (struct platform_device*,int,int) ;
 struct platform_device* dsi_get_dsidev_from_dssdev (struct omap_dss_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_runtime_put (struct platform_device*) ;
 int dsi_sync_vc (struct platform_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dsi_display_disable(struct omap_dss_device *dssdev,
  bool disconnect_lanes, bool enter_ulps)
{
 struct platform_device *dsidev = dsi_get_dsidev_from_dssdev(dssdev);
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);

 DSSDBG("dsi_display_disable\n");

 WARN_ON(!dsi_bus_is_locked(dsidev));

 mutex_lock(&dsi->lock);

 dsi_sync_vc(dsidev, 0);
 dsi_sync_vc(dsidev, 1);
 dsi_sync_vc(dsidev, 2);
 dsi_sync_vc(dsidev, 3);

 dsi_display_uninit_dsi(dsidev, disconnect_lanes, enter_ulps);

 dsi_runtime_put(dsidev);

 mutex_unlock(&dsi->lock);
}
