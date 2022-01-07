
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_wp_data {int base; } ;


 int HDMI_WP_IRQSTATUS ;
 int hdmi_read_reg (int ,int ) ;

u32 hdmi_wp_get_irqstatus(struct hdmi_wp_data *wp)
{
 return hdmi_read_reg(wp->base, HDMI_WP_IRQSTATUS);
}
