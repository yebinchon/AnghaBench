
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_audio_infoframe {int dummy; } ;
typedef int ssize_t ;


 int hdmi_audio_infoframe_check (struct hdmi_audio_infoframe*) ;
 int hdmi_audio_infoframe_pack_only (struct hdmi_audio_infoframe*,void*,size_t) ;

ssize_t hdmi_audio_infoframe_pack(struct hdmi_audio_infoframe *frame,
      void *buffer, size_t size)
{
 int ret;

 ret = hdmi_audio_infoframe_check(frame);
 if (ret)
  return ret;

 return hdmi_audio_infoframe_pack_only(frame, buffer, size);
}
