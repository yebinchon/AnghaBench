
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_avi_infoframe {int dummy; } ;
typedef int ssize_t ;


 int hdmi_avi_infoframe_check (struct hdmi_avi_infoframe*) ;
 int hdmi_avi_infoframe_pack_only (struct hdmi_avi_infoframe*,void*,size_t) ;

ssize_t hdmi_avi_infoframe_pack(struct hdmi_avi_infoframe *frame,
    void *buffer, size_t size)
{
 int ret;

 ret = hdmi_avi_infoframe_check(frame);
 if (ret)
  return ret;

 return hdmi_avi_infoframe_pack_only(frame, buffer, size);
}
