
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int version; } ;
union hdmi_vendor_any_infoframe {TYPE_1__ any; } ;


 int EINVAL ;
 scalar_t__ HDMI_INFOFRAME_TYPE_VENDOR ;

__attribute__((used)) static int
hdmi_vendor_any_infoframe_check_only(const union hdmi_vendor_any_infoframe *frame)
{
 if (frame->any.type != HDMI_INFOFRAME_TYPE_VENDOR ||
     frame->any.version != 1)
  return -EINVAL;

 return 0;
}
