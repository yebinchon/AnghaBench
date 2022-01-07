
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_dss_device {int dummy; } ;
struct hdmi_avi_infoframe {int dummy; } ;
struct TYPE_3__ {struct hdmi_avi_infoframe infoframe; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;


 TYPE_2__ hdmi ;

__attribute__((used)) static int hdmi_set_infoframe(struct omap_dss_device *dssdev,
  const struct hdmi_avi_infoframe *avi)
{
 hdmi.cfg.infoframe = *avi;
 return 0;
}
