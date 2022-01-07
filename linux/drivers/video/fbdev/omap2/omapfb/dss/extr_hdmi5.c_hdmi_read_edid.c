
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int core_enabled; } ;


 TYPE_1__ hdmi ;
 int hdmi_core_disable (struct omap_dss_device*) ;
 int hdmi_core_enable (struct omap_dss_device*) ;
 int read_edid (int *,int) ;

__attribute__((used)) static int hdmi_read_edid(struct omap_dss_device *dssdev,
  u8 *edid, int len)
{
 bool need_enable;
 int r;

 need_enable = hdmi.core_enabled == 0;

 if (need_enable) {
  r = hdmi_core_enable(dssdev);
  if (r)
   return r;
 }

 r = read_edid(edid, len);

 if (need_enable)
  hdmi_core_disable(dssdev);

 return r;
}
