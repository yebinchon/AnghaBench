
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_wp_data {int base; } ;


 int HDMI_WP_IRQSTATUS ;
 int hdmi_read_reg (int ,int ) ;
 int hdmi_write_reg (int ,int ,int ) ;

void hdmi_wp_set_irqstatus(struct hdmi_wp_data *wp, u32 irqstatus)
{
 hdmi_write_reg(wp->base, HDMI_WP_IRQSTATUS, irqstatus);

 hdmi_read_reg(wp->base, HDMI_WP_IRQSTATUS);
}
