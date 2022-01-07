
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_drm_infoframe {scalar_t__ type; int version; scalar_t__ length; } ;


 int EINVAL ;
 scalar_t__ HDMI_DRM_INFOFRAME_SIZE ;
 scalar_t__ HDMI_INFOFRAME_TYPE_DRM ;

__attribute__((used)) static int hdmi_drm_infoframe_check_only(const struct hdmi_drm_infoframe *frame)
{
 if (frame->type != HDMI_INFOFRAME_TYPE_DRM ||
     frame->version != 1)
  return -EINVAL;

 if (frame->length != HDMI_DRM_INFOFRAME_SIZE)
  return -EINVAL;

 return 0;
}
