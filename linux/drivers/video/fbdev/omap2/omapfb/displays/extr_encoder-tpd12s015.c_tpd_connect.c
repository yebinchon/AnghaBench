
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_drv_data {scalar_t__ ct_cp_hpd_gpio; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* hdmi; } ;
struct omap_dss_device {struct omap_dss_device* dst; struct omap_dss_device* src; TYPE_2__ ops; } ;
struct TYPE_3__ {int (* connect ) (struct omap_dss_device*,struct omap_dss_device*) ;} ;


 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int stub1 (struct omap_dss_device*,struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;
 int udelay (int) ;

__attribute__((used)) static int tpd_connect(struct omap_dss_device *dssdev,
  struct omap_dss_device *dst)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;
 int r;

 r = in->ops.hdmi->connect(in, dssdev);
 if (r)
  return r;

 dst->src = dssdev;
 dssdev->dst = dst;

 if (ddata->ct_cp_hpd_gpio) {
  gpiod_set_value_cansleep(ddata->ct_cp_hpd_gpio, 1);

  udelay(300);
 }

 return 0;
}
