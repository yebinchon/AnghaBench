
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_drv_data {struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* atv; } ;
struct omap_dss_device {struct omap_dss_device* dst; struct omap_dss_device* src; TYPE_2__ ops; int dev; } ;
struct TYPE_3__ {int (* connect ) (struct omap_dss_device*,struct omap_dss_device*) ;} ;


 int EBUSY ;
 int dev_dbg (int ,char*) ;
 scalar_t__ omapdss_device_is_connected (struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*,struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static int opa362_connect(struct omap_dss_device *dssdev,
  struct omap_dss_device *dst)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;
 int r;

 dev_dbg(dssdev->dev, "connect\n");

 if (omapdss_device_is_connected(dssdev))
  return -EBUSY;

 r = in->ops.atv->connect(in, dssdev);
 if (r)
  return r;

 dst->src = dssdev;
 dssdev->dst = dst;

 return 0;
}
