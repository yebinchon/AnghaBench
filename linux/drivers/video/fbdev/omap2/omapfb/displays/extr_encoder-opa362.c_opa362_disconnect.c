
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_drv_data {int dssdev; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* atv; } ;
struct omap_dss_device {TYPE_2__ ops; struct omap_dss_device* dst; int * src; int dev; } ;
struct TYPE_3__ {int (* disconnect ) (struct omap_dss_device*,int *) ;} ;


 int WARN_ON (int) ;
 int dev_dbg (int ,char*) ;
 int omapdss_device_is_connected (struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*,int *) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static void opa362_disconnect(struct omap_dss_device *dssdev,
  struct omap_dss_device *dst)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;

 dev_dbg(dssdev->dev, "disconnect\n");

 WARN_ON(!omapdss_device_is_connected(dssdev));
 if (!omapdss_device_is_connected(dssdev))
  return;

 WARN_ON(dst != dssdev->dst);
 if (dst != dssdev->dst)
  return;

 dst->src = ((void*)0);
 dssdev->dst = ((void*)0);

 in->ops.atv->disconnect(in, &ddata->dssdev);
}
