
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_dss_device {int dummy; } ;
struct TYPE_3__ {int hdmi_dvi_mode; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;


 int HDMI_DVI ;
 int HDMI_HDMI ;
 TYPE_2__ hdmi ;

__attribute__((used)) static int hdmi_set_hdmi_mode(struct omap_dss_device *dssdev,
  bool hdmi_mode)
{
 hdmi.cfg.hdmi_dvi_mode = hdmi_mode ? HDMI_HDMI : HDMI_DVI;
 return 0;
}
