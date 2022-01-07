
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int y; int x; } ;
struct hdmi_drm_infoframe {int max_fall; int max_cll; int min_display_mastering_luminance; int max_display_mastering_luminance; TYPE_2__ white_point; TYPE_1__* display_primaries; int eotf; int metadata_type; int length; } ;
struct hdmi_any_infoframe {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int y; int x; } ;


 int hdmi_infoframe_log_header (char const*,struct device*,struct hdmi_any_infoframe*) ;
 int hdmi_log (char*,int,...) ;

__attribute__((used)) static void hdmi_drm_infoframe_log(const char *level,
       struct device *dev,
       const struct hdmi_drm_infoframe *frame)
{
 int i;

 hdmi_infoframe_log_header(level, dev,
      (struct hdmi_any_infoframe *)frame);
 hdmi_log("length: %d\n", frame->length);
 hdmi_log("metadata type: %d\n", frame->metadata_type);
 hdmi_log("eotf: %d\n", frame->eotf);
 for (i = 0; i < 3; i++) {
  hdmi_log("x[%d]: %d\n", i, frame->display_primaries[i].x);
  hdmi_log("y[%d]: %d\n", i, frame->display_primaries[i].y);
 }

 hdmi_log("white point x: %d\n", frame->white_point.x);
 hdmi_log("white point y: %d\n", frame->white_point.y);

 hdmi_log("max_display_mastering_luminance: %d\n",
   frame->max_display_mastering_luminance);
 hdmi_log("min_display_mastering_luminance: %d\n",
   frame->min_display_mastering_luminance);

 hdmi_log("max_cll: %d\n", frame->max_cll);
 hdmi_log("max_fall: %d\n", frame->max_fall);
}
