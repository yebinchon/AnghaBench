
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_wp_data {scalar_t__ phys_base; } ;
typedef scalar_t__ phys_addr_t ;


 scalar_t__ HDMI_WP_AUDIO_DATA ;

phys_addr_t hdmi_wp_get_audio_dma_addr(struct hdmi_wp_data *wp)
{
 return wp->phys_base + HDMI_WP_AUDIO_DATA;
}
