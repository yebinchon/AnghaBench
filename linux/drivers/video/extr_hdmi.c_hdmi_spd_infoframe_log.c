
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdmi_spd_infoframe {int sdi; int product; int vendor; } ;
struct hdmi_any_infoframe {int dummy; } ;
struct device {int dummy; } ;
typedef int buf ;


 int hdmi_infoframe_log_header (char const*,struct device*,struct hdmi_any_infoframe const*) ;
 int hdmi_log (char*,int ,...) ;
 int hdmi_spd_sdi_get_name (int ) ;
 int memset (int *,int ,int) ;
 int strncpy (int *,int ,int) ;

__attribute__((used)) static void hdmi_spd_infoframe_log(const char *level,
       struct device *dev,
       const struct hdmi_spd_infoframe *frame)
{
 u8 buf[17];

 hdmi_infoframe_log_header(level, dev,
      (const struct hdmi_any_infoframe *)frame);

 memset(buf, 0, sizeof(buf));

 strncpy(buf, frame->vendor, 8);
 hdmi_log("    vendor: %s\n", buf);
 strncpy(buf, frame->product, 16);
 hdmi_log("    product: %s\n", buf);
 hdmi_log("    source device information: %s (0x%x)\n",
  hdmi_spd_sdi_get_name(frame->sdi), frame->sdi);
}
