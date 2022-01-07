
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_drv_data {struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* hdmi; } ;
struct omap_dss_device {TYPE_2__ ops; } ;
struct hdmi_avi_infoframe {int dummy; } ;
struct TYPE_3__ {int (* set_infoframe ) (struct omap_dss_device*,struct hdmi_avi_infoframe const*) ;} ;


 int stub1 (struct omap_dss_device*,struct hdmi_avi_infoframe const*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static int hdmic_set_infoframe(struct omap_dss_device *dssdev,
  const struct hdmi_avi_infoframe *avi)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;

 return in->ops.hdmi->set_infoframe(in, avi);
}
