
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_avi_infoframe {scalar_t__ type; int version; scalar_t__ length; scalar_t__ picture_aspect; } ;


 int EINVAL ;
 scalar_t__ HDMI_AVI_INFOFRAME_SIZE ;
 scalar_t__ HDMI_INFOFRAME_TYPE_AVI ;
 scalar_t__ HDMI_PICTURE_ASPECT_16_9 ;

__attribute__((used)) static int hdmi_avi_infoframe_check_only(const struct hdmi_avi_infoframe *frame)
{
 if (frame->type != HDMI_INFOFRAME_TYPE_AVI ||
     frame->version != 2 ||
     frame->length != HDMI_AVI_INFOFRAME_SIZE)
  return -EINVAL;

 if (frame->picture_aspect > HDMI_PICTURE_ASPECT_16_9)
  return -EINVAL;

 return 0;
}
