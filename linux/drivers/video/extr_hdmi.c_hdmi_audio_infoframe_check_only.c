
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_audio_infoframe {scalar_t__ type; int version; scalar_t__ length; } ;


 int EINVAL ;
 scalar_t__ HDMI_AUDIO_INFOFRAME_SIZE ;
 scalar_t__ HDMI_INFOFRAME_TYPE_AUDIO ;

__attribute__((used)) static int hdmi_audio_infoframe_check_only(const struct hdmi_audio_infoframe *frame)
{
 if (frame->type != HDMI_INFOFRAME_TYPE_AUDIO ||
     frame->version != 1 ||
     frame->length != HDMI_AUDIO_INFOFRAME_SIZE)
  return -EINVAL;

 return 0;
}
