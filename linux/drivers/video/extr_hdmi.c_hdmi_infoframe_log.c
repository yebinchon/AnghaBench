
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
union hdmi_infoframe {int drm; int vendor; int audio; int spd; int avi; TYPE_1__ any; } ;
struct device {int dummy; } ;







 int hdmi_audio_infoframe_log (char const*,struct device*,int *) ;
 int hdmi_avi_infoframe_log (char const*,struct device*,int *) ;
 int hdmi_drm_infoframe_log (char const*,struct device*,int *) ;
 int hdmi_spd_infoframe_log (char const*,struct device*,int *) ;
 int hdmi_vendor_any_infoframe_log (char const*,struct device*,int *) ;

void hdmi_infoframe_log(const char *level,
   struct device *dev,
   const union hdmi_infoframe *frame)
{
 switch (frame->any.type) {
 case 131:
  hdmi_avi_infoframe_log(level, dev, &frame->avi);
  break;
 case 129:
  hdmi_spd_infoframe_log(level, dev, &frame->spd);
  break;
 case 132:
  hdmi_audio_infoframe_log(level, dev, &frame->audio);
  break;
 case 128:
  hdmi_vendor_any_infoframe_log(level, dev, &frame->vendor);
  break;
 case 130:
  hdmi_drm_infoframe_log(level, dev, &frame->drm);
  break;
 }
}
