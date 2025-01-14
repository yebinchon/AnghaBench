
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdmi_spd_infoframe {int sdi; } ;


 int EINVAL ;
 int HDMI_INFOFRAME_HEADER_SIZE ;
 size_t HDMI_INFOFRAME_SIZE (int ) ;
 int const HDMI_INFOFRAME_TYPE_SPD ;
 int const HDMI_SPD_INFOFRAME_SIZE ;
 int SPD ;
 scalar_t__ hdmi_infoframe_checksum (void const*,size_t) ;
 int hdmi_spd_infoframe_init (struct hdmi_spd_infoframe*,int const*,int const*) ;

__attribute__((used)) static int hdmi_spd_infoframe_unpack(struct hdmi_spd_infoframe *frame,
         const void *buffer, size_t size)
{
 const u8 *ptr = buffer;
 int ret;

 if (size < HDMI_INFOFRAME_SIZE(SPD))
  return -EINVAL;

 if (ptr[0] != HDMI_INFOFRAME_TYPE_SPD ||
     ptr[1] != 1 ||
     ptr[2] != HDMI_SPD_INFOFRAME_SIZE) {
  return -EINVAL;
 }

 if (hdmi_infoframe_checksum(buffer, HDMI_INFOFRAME_SIZE(SPD)) != 0)
  return -EINVAL;

 ptr += HDMI_INFOFRAME_HEADER_SIZE;

 ret = hdmi_spd_infoframe_init(frame, ptr, ptr + 8);
 if (ret)
  return ret;

 frame->sdi = ptr[24];

 return 0;
}
