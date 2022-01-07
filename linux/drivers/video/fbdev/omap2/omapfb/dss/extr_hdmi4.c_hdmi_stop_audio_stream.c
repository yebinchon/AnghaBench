
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hdmi {int wp; int core; } ;


 int hdmi4_audio_stop (int *,int *) ;
 int hdmi_wp_audio_enable (int *,int) ;

__attribute__((used)) static void hdmi_stop_audio_stream(struct omap_hdmi *hd)
{
 hdmi4_audio_stop(&hd->core, &hd->wp);
 hdmi_wp_audio_enable(&hd->wp, 0);
}
