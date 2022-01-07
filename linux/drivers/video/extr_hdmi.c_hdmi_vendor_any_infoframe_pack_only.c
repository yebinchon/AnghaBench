
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ oui; } ;
union hdmi_vendor_any_infoframe {int hdmi; TYPE_1__ any; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ HDMI_IEEE_OUI ;
 int hdmi_vendor_any_infoframe_check_only (union hdmi_vendor_any_infoframe const*) ;
 int hdmi_vendor_infoframe_pack_only (int *,void*,size_t) ;

__attribute__((used)) static ssize_t
hdmi_vendor_any_infoframe_pack_only(const union hdmi_vendor_any_infoframe *frame,
        void *buffer, size_t size)
{
 int ret;

 ret = hdmi_vendor_any_infoframe_check_only(frame);
 if (ret)
  return ret;


 if (frame->any.oui != HDMI_IEEE_OUI)
  return -EINVAL;

 return hdmi_vendor_infoframe_pack_only(&frame->hdmi, buffer, size);
}
