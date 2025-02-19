
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_drv_data {int backlight_gpio; scalar_t__ enable_gpio; struct omap_dss_device* in; } ;
struct TYPE_3__ {TYPE_2__* dpi; } ;
struct omap_dss_device {int state; TYPE_1__ ops; } ;
struct TYPE_4__ {int (* disable ) (struct omap_dss_device*) ;} ;


 int OMAP_DSS_DISPLAY_DISABLED ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value_cansleep (int ,int ) ;
 int gpiod_set_value_cansleep (scalar_t__,int ) ;
 int omapdss_device_is_enabled (struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static void lb035q02_disable(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;

 if (!omapdss_device_is_enabled(dssdev))
  return;

 if (ddata->enable_gpio)
  gpiod_set_value_cansleep(ddata->enable_gpio, 0);

 if (gpio_is_valid(ddata->backlight_gpio))
  gpio_set_value_cansleep(ddata->backlight_gpio, 0);

 in->ops.dpi->disable(in);

 dssdev->state = OMAP_DSS_DISPLAY_DISABLED;
}
