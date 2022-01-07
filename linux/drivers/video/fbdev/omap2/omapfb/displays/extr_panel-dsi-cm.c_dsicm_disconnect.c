
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_drv_data {int channel; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* dsi; } ;
struct omap_dss_device {TYPE_2__ ops; } ;
struct TYPE_3__ {int (* disconnect ) (struct omap_dss_device*,struct omap_dss_device*) ;int (* release_vc ) (struct omap_dss_device*,int ) ;} ;


 int omapdss_device_is_connected (struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*,int ) ;
 int stub2 (struct omap_dss_device*,struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static void dsicm_disconnect(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;

 if (!omapdss_device_is_connected(dssdev))
  return;

 in->ops.dsi->release_vc(in, ddata->channel);
 in->ops.dsi->disconnect(in, dssdev);
}
