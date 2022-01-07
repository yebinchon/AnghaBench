
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_audio_infoframe {int dummy; } ;


 int hdmi_audio_infoframe_check_only (struct hdmi_audio_infoframe*) ;

int hdmi_audio_infoframe_check(struct hdmi_audio_infoframe *frame)
{
 return hdmi_audio_infoframe_check_only(frame);
}
