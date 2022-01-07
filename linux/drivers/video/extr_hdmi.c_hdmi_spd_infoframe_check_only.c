
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spd_infoframe {scalar_t__ type; int version; scalar_t__ length; } ;


 int EINVAL ;
 scalar_t__ HDMI_INFOFRAME_TYPE_SPD ;
 scalar_t__ HDMI_SPD_INFOFRAME_SIZE ;

__attribute__((used)) static int hdmi_spd_infoframe_check_only(const struct hdmi_spd_infoframe *frame)
{
 if (frame->type != HDMI_INFOFRAME_TYPE_SPD ||
     frame->version != 1 ||
     frame->length != HDMI_SPD_INFOFRAME_SIZE)
  return -EINVAL;

 return 0;
}
