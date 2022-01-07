
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_wp_data {int dummy; } ;
typedef int irqreturn_t ;


 int HDMI_IRQ_LINK_CONNECT ;
 int HDMI_IRQ_LINK_DISCONNECT ;
 int HDMI_PHYPWRCMD_LDOON ;
 int HDMI_PHYPWRCMD_OFF ;
 int HDMI_PHYPWRCMD_TXON ;
 int IRQ_HANDLED ;
 int hdmi_wp_get_irqstatus (struct hdmi_wp_data*) ;
 int hdmi_wp_set_irqstatus (struct hdmi_wp_data*,int) ;
 int hdmi_wp_set_phy_pwr (struct hdmi_wp_data*,int ) ;

__attribute__((used)) static irqreturn_t hdmi_irq_handler(int irq, void *data)
{
 struct hdmi_wp_data *wp = data;
 u32 irqstatus;

 irqstatus = hdmi_wp_get_irqstatus(wp);
 hdmi_wp_set_irqstatus(wp, irqstatus);

 if ((irqstatus & HDMI_IRQ_LINK_CONNECT) &&
   irqstatus & HDMI_IRQ_LINK_DISCONNECT) {






  hdmi_wp_set_phy_pwr(wp, HDMI_PHYPWRCMD_OFF);

  hdmi_wp_set_irqstatus(wp, HDMI_IRQ_LINK_CONNECT |
    HDMI_IRQ_LINK_DISCONNECT);

  hdmi_wp_set_phy_pwr(wp, HDMI_PHYPWRCMD_LDOON);
 } else if (irqstatus & HDMI_IRQ_LINK_CONNECT) {
  hdmi_wp_set_phy_pwr(wp, HDMI_PHYPWRCMD_TXON);
 } else if (irqstatus & HDMI_IRQ_LINK_DISCONNECT) {
  hdmi_wp_set_phy_pwr(wp, HDMI_PHYPWRCMD_LDOON);
 }

 return IRQ_HANDLED;
}
