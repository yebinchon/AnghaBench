
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
union hdmi_infoframe {TYPE_1__ any; int vendor; int audio; int spd; int drm; int avi; } ;
typedef int ssize_t ;


 int EINVAL ;





 int WARN (int,char*,int) ;
 int hdmi_audio_infoframe_pack (int *,void*,size_t) ;
 int hdmi_avi_infoframe_pack (int *,void*,size_t) ;
 int hdmi_drm_infoframe_pack (int *,void*,size_t) ;
 int hdmi_spd_infoframe_pack (int *,void*,size_t) ;
 int hdmi_vendor_any_infoframe_pack (int *,void*,size_t) ;

ssize_t
hdmi_infoframe_pack(union hdmi_infoframe *frame,
      void *buffer, size_t size)
{
 ssize_t length;

 switch (frame->any.type) {
 case 131:
  length = hdmi_avi_infoframe_pack(&frame->avi, buffer, size);
  break;
 case 130:
  length = hdmi_drm_infoframe_pack(&frame->drm, buffer, size);
  break;
 case 129:
  length = hdmi_spd_infoframe_pack(&frame->spd, buffer, size);
  break;
 case 132:
  length = hdmi_audio_infoframe_pack(&frame->audio, buffer, size);
  break;
 case 128:
  length = hdmi_vendor_any_infoframe_pack(&frame->vendor,
       buffer, size);
  break;
 default:
  WARN(1, "Bad infoframe type %d\n", frame->any.type);
  length = -EINVAL;
 }

 return length;
}
