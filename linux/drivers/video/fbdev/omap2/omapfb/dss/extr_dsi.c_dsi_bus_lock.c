
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct dsi_data {int bus_lock; } ;


 int down (int *) ;
 struct platform_device* dsi_get_dsidev_from_dssdev (struct omap_dss_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;

__attribute__((used)) static void dsi_bus_lock(struct omap_dss_device *dssdev)
{
 struct platform_device *dsidev = dsi_get_dsidev_from_dssdev(dssdev);
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);

 down(&dsi->bus_lock);
}
