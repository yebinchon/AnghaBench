
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_vendor_infoframe {scalar_t__ s3d_struct; scalar_t__ vic; } ;


 scalar_t__ HDMI_3D_STRUCTURE_INVALID ;
 scalar_t__ HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF ;

__attribute__((used)) static int hdmi_vendor_infoframe_length(const struct hdmi_vendor_infoframe *frame)
{

 if (frame->s3d_struct >= HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF)
  return 6;
 else if (frame->vic != 0 || frame->s3d_struct != HDMI_3D_STRUCTURE_INVALID)
  return 5;
 else
  return 4;
}
