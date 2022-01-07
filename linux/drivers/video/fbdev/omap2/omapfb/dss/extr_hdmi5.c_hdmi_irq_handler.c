
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hdmi_wp_data {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int base; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;


 int FLD_MOD (int,int,int,int) ;
 int HDMI_IRQ_LINK_CONNECT ;
 int HDMI_IRQ_LINK_DISCONNECT ;
 int HDMI_PHYPWRCMD_LDOON ;
 int HDMI_PHYPWRCMD_OFF ;
 int HDMI_PHYPWRCMD_TXON ;
 int HDMI_TXPHY_PAD_CFG_CTRL ;
 int IRQ_HANDLED ;
 int REG_FLD_MOD (int ,int ,int ,int,int) ;
 TYPE_2__ hdmi ;
 int hdmi_read_reg (int ,int ) ;
 int hdmi_wp_get_irqstatus (struct hdmi_wp_data*) ;
 int hdmi_wp_set_irqstatus (struct hdmi_wp_data*,int) ;
 int hdmi_wp_set_phy_pwr (struct hdmi_wp_data*,int ) ;
 int hdmi_write_reg (int ,int ,int) ;

__attribute__((used)) static irqreturn_t hdmi_irq_handler(int irq, void *data)
{
 struct hdmi_wp_data *wp = data;
 u32 irqstatus;

 irqstatus = hdmi_wp_get_irqstatus(wp);
 hdmi_wp_set_irqstatus(wp, irqstatus);

 if ((irqstatus & HDMI_IRQ_LINK_CONNECT) &&
   irqstatus & HDMI_IRQ_LINK_DISCONNECT) {
  u32 v;







  hdmi_wp_set_phy_pwr(wp, HDMI_PHYPWRCMD_OFF);






  v = hdmi_read_reg(hdmi.phy.base, HDMI_TXPHY_PAD_CFG_CTRL);
  v = FLD_MOD(v, 1, 15, 15);
  v = FLD_MOD(v, 0, 14, 7);
  hdmi_write_reg(hdmi.phy.base, HDMI_TXPHY_PAD_CFG_CTRL, v);

  hdmi_wp_set_irqstatus(wp, HDMI_IRQ_LINK_CONNECT |
    HDMI_IRQ_LINK_DISCONNECT);

  hdmi_wp_set_phy_pwr(wp, HDMI_PHYPWRCMD_LDOON);

  REG_FLD_MOD(hdmi.phy.base, HDMI_TXPHY_PAD_CFG_CTRL, 0, 15, 15);

 } else if (irqstatus & HDMI_IRQ_LINK_CONNECT) {
  hdmi_wp_set_phy_pwr(wp, HDMI_PHYPWRCMD_TXON);
 } else if (irqstatus & HDMI_IRQ_LINK_DISCONNECT) {
  hdmi_wp_set_phy_pwr(wp, HDMI_PHYPWRCMD_LDOON);
 }

 return IRQ_HANDLED;
}
