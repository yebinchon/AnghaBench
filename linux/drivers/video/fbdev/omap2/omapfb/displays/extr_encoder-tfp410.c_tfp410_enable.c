
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_drv_data {int pd_gpio; scalar_t__ data_lines; int timings; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* dpi; } ;
struct omap_dss_device {int state; TYPE_2__ ops; } ;
struct TYPE_3__ {int (* enable ) (struct omap_dss_device*) ;int (* set_data_lines ) (struct omap_dss_device*,scalar_t__) ;int (* set_timings ) (struct omap_dss_device*,int *) ;} ;


 int ENODEV ;
 int OMAP_DSS_DISPLAY_ACTIVE ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value_cansleep (int ,int) ;
 int omapdss_device_is_connected (struct omap_dss_device*) ;
 scalar_t__ omapdss_device_is_enabled (struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*,int *) ;
 int stub2 (struct omap_dss_device*,scalar_t__) ;
 int stub3 (struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static int tfp410_enable(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;
 int r;

 if (!omapdss_device_is_connected(dssdev))
  return -ENODEV;

 if (omapdss_device_is_enabled(dssdev))
  return 0;

 in->ops.dpi->set_timings(in, &ddata->timings);
 if (ddata->data_lines)
  in->ops.dpi->set_data_lines(in, ddata->data_lines);

 r = in->ops.dpi->enable(in);
 if (r)
  return r;

 if (gpio_is_valid(ddata->pd_gpio))
  gpio_set_value_cansleep(ddata->pd_gpio, 1);

 dssdev->state = OMAP_DSS_DISPLAY_ACTIVE;

 return 0;
}
