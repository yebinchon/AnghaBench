
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct dsi_data {TYPE_1__* vc; } ;
struct TYPE_2__ {scalar_t__ vc_id; struct omap_dss_device* dssdev; } ;


 struct platform_device* dsi_get_dsidev_from_dssdev (struct omap_dss_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;

__attribute__((used)) static void dsi_release_vc(struct omap_dss_device *dssdev, int channel)
{
 struct platform_device *dsidev = dsi_get_dsidev_from_dssdev(dssdev);
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);

 if ((channel >= 0 && channel <= 3) &&
  dsi->vc[channel].dssdev == dssdev) {
  dsi->vc[channel].dssdev = ((void*)0);
  dsi->vc[channel].vc_id = 0;
 }
}
