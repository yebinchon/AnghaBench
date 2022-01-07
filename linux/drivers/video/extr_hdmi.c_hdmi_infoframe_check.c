
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
union hdmi_infoframe {TYPE_1__ any; int vendor; int audio; int spd; int avi; } ;


 int EINVAL ;




 int WARN (int,char*,int) ;
 int hdmi_audio_infoframe_check (int *) ;
 int hdmi_avi_infoframe_check (int *) ;
 int hdmi_spd_infoframe_check (int *) ;
 int hdmi_vendor_any_infoframe_check (int *) ;

int
hdmi_infoframe_check(union hdmi_infoframe *frame)
{
 switch (frame->any.type) {
 case 130:
  return hdmi_avi_infoframe_check(&frame->avi);
 case 129:
  return hdmi_spd_infoframe_check(&frame->spd);
 case 131:
  return hdmi_audio_infoframe_check(&frame->audio);
 case 128:
  return hdmi_vendor_any_infoframe_check(&frame->vendor);
 default:
  WARN(1, "Bad infoframe type %d\n", frame->any.type);
  return -EINVAL;
 }
}
