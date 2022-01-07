
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_drv_data {int dev; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* atv; } ;
struct omap_dss_device {TYPE_2__ ops; } ;
struct TYPE_3__ {int (* connect ) (struct omap_dss_device*,struct omap_dss_device*) ;} ;


 int dev_dbg (int ,char*) ;
 scalar_t__ omapdss_device_is_connected (struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*,struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static int tvc_connect(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;
 int r;

 dev_dbg(ddata->dev, "connect\n");

 if (omapdss_device_is_connected(dssdev))
  return 0;

 r = in->ops.atv->connect(in, dssdev);
 if (r)
  return r;

 return 0;
}
