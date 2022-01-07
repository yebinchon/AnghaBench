
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_any_infoframe {int length; int version; int type; } ;
struct device {int dummy; } ;


 int hdmi_infoframe_type_get_name (int ) ;
 int hdmi_log (char*,int ,int ,int ) ;

__attribute__((used)) static void hdmi_infoframe_log_header(const char *level,
          struct device *dev,
          const struct hdmi_any_infoframe *frame)
{
 hdmi_log("HDMI infoframe: %s, version %u, length %u\n",
  hdmi_infoframe_type_get_name(frame->type),
  frame->version, frame->length);
}
