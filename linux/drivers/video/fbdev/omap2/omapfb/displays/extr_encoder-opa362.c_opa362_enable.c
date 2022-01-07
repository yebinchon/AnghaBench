
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_drv_data {scalar_t__ enable_gpio; int timings; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* atv; } ;
struct omap_dss_device {int state; TYPE_2__ ops; int dev; } ;
struct TYPE_3__ {int (* enable ) (struct omap_dss_device*) ;int (* set_timings ) (struct omap_dss_device*,int *) ;} ;


 int ENODEV ;
 int OMAP_DSS_DISPLAY_ACTIVE ;
 int dev_dbg (int ,char*) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int omapdss_device_is_connected (struct omap_dss_device*) ;
 scalar_t__ omapdss_device_is_enabled (struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*,int *) ;
 int stub2 (struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static int opa362_enable(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;
 int r;

 dev_dbg(dssdev->dev, "enable\n");

 if (!omapdss_device_is_connected(dssdev))
  return -ENODEV;

 if (omapdss_device_is_enabled(dssdev))
  return 0;

 in->ops.atv->set_timings(in, &ddata->timings);

 r = in->ops.atv->enable(in);
 if (r)
  return r;

 if (ddata->enable_gpio)
  gpiod_set_value_cansleep(ddata->enable_gpio, 1);

 dssdev->state = OMAP_DSS_DISPLAY_ACTIVE;

 return 0;
}
