
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_drv_data {scalar_t__ vcc; scalar_t__ resb_gpio; scalar_t__ ini_gpio; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* dpi; } ;
struct omap_dss_device {int state; TYPE_2__ ops; } ;
struct TYPE_3__ {int (* disable ) (struct omap_dss_device*) ;} ;


 int OMAP_DSS_DISPLAY_DISABLED ;
 int gpiod_set_value_cansleep (scalar_t__,int ) ;
 int msleep (int) ;
 int omapdss_device_is_enabled (struct omap_dss_device*) ;
 int regulator_disable (scalar_t__) ;
 int stub1 (struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static void sharp_ls_disable(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;

 if (!omapdss_device_is_enabled(dssdev))
  return;

 if (ddata->ini_gpio)
  gpiod_set_value_cansleep(ddata->ini_gpio, 0);

 if (ddata->resb_gpio)
  gpiod_set_value_cansleep(ddata->resb_gpio, 0);



 msleep(100);

 in->ops.dpi->disable(in);

 if (ddata->vcc)
  regulator_disable(ddata->vcc);

 dssdev->state = OMAP_DSS_DISPLAY_DISABLED;
}
