
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct panel_drv_data {int invert_polarity; TYPE_3__* dev; int timings; struct omap_dss_device* in; } ;
struct TYPE_5__ {TYPE_1__* atv; } ;
struct omap_dss_device {int state; TYPE_2__ ops; } ;
struct TYPE_6__ {int of_node; } ;
struct TYPE_4__ {int (* enable ) (struct omap_dss_device*) ;int (* invert_vid_out_polarity ) (struct omap_dss_device*,int ) ;int (* set_type ) (struct omap_dss_device*,int ) ;int (* set_timings ) (struct omap_dss_device*,int *) ;} ;


 int ENODEV ;
 int OMAP_DSS_DISPLAY_ACTIVE ;
 int OMAP_DSS_VENC_TYPE_COMPOSITE ;
 int dev_dbg (TYPE_3__*,char*) ;
 int omapdss_device_is_connected (struct omap_dss_device*) ;
 scalar_t__ omapdss_device_is_enabled (struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*,int *) ;
 int stub2 (struct omap_dss_device*,int ) ;
 int stub3 (struct omap_dss_device*,int ) ;
 int stub4 (struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static int tvc_enable(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;
 int r;

 dev_dbg(ddata->dev, "enable\n");

 if (!omapdss_device_is_connected(dssdev))
  return -ENODEV;

 if (omapdss_device_is_enabled(dssdev))
  return 0;

 in->ops.atv->set_timings(in, &ddata->timings);

 if (!ddata->dev->of_node) {
  in->ops.atv->set_type(in, OMAP_DSS_VENC_TYPE_COMPOSITE);

  in->ops.atv->invert_vid_out_polarity(in,
   ddata->invert_polarity);
 }

 r = in->ops.atv->enable(in);
 if (r)
  return r;

 dssdev->state = OMAP_DSS_DISPLAY_ACTIVE;

 return r;
}
