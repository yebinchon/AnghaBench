
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union hdmi_infoframe {int vendor; int audio; int spd; int drm; int avi; } ;
typedef int u8 ;


 int EINVAL ;
 size_t HDMI_INFOFRAME_HEADER_SIZE ;





 int hdmi_audio_infoframe_unpack (int *,void const*,size_t) ;
 int hdmi_avi_infoframe_unpack (int *,void const*,size_t) ;
 int hdmi_drm_infoframe_unpack (int *,void const*,size_t) ;
 int hdmi_spd_infoframe_unpack (int *,void const*,size_t) ;
 int hdmi_vendor_any_infoframe_unpack (int *,void const*,size_t) ;

int hdmi_infoframe_unpack(union hdmi_infoframe *frame,
     const void *buffer, size_t size)
{
 int ret;
 const u8 *ptr = buffer;

 if (size < HDMI_INFOFRAME_HEADER_SIZE)
  return -EINVAL;

 switch (ptr[0]) {
 case 131:
  ret = hdmi_avi_infoframe_unpack(&frame->avi, buffer, size);
  break;
 case 130:
  ret = hdmi_drm_infoframe_unpack(&frame->drm, buffer, size);
  break;
 case 129:
  ret = hdmi_spd_infoframe_unpack(&frame->spd, buffer, size);
  break;
 case 132:
  ret = hdmi_audio_infoframe_unpack(&frame->audio, buffer, size);
  break;
 case 128:
  ret = hdmi_vendor_any_infoframe_unpack(&frame->vendor, buffer, size);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
