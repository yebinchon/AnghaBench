
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_drm_infoframe {int version; int length; int type; } ;


 int HDMI_DRM_INFOFRAME_SIZE ;
 int HDMI_INFOFRAME_TYPE_DRM ;
 int memset (struct hdmi_drm_infoframe*,int ,int) ;

int hdmi_drm_infoframe_init(struct hdmi_drm_infoframe *frame)
{
 memset(frame, 0, sizeof(*frame));

 frame->type = HDMI_INFOFRAME_TYPE_DRM;
 frame->version = 1;
 frame->length = HDMI_DRM_INFOFRAME_SIZE;

 return 0;
}
