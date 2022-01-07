
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_hdmi {int wp; } ;
struct TYPE_3__ {int base; } ;
struct TYPE_4__ {TYPE_1__ wp; } ;


 int HDMI_WP_SYSCONFIG ;
 int REG_FLD_MOD (int ,int ,int,int,int) ;
 TYPE_2__ hdmi ;
 int hdmi_wp_audio_core_req_enable (int *,int) ;
 int hdmi_wp_audio_enable (int *,int) ;

__attribute__((used)) static void hdmi_start_audio_stream(struct omap_hdmi *hd)
{
 REG_FLD_MOD(hdmi.wp.base, HDMI_WP_SYSCONFIG, 1, 3, 2);
 hdmi_wp_audio_enable(&hd->wp, 1);
 hdmi_wp_audio_core_req_enable(&hd->wp, 1);
}
