
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inno_hdmi_phy {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RK3328_PDATA_EN ;
 int inno_update_bits (struct inno_hdmi_phy*,int,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static irqreturn_t inno_hdmi_phy_rk3328_irq(int irq, void *dev_id)
{
 struct inno_hdmi_phy *inno = dev_id;

 inno_update_bits(inno, 0x02, RK3328_PDATA_EN, 0);
 usleep_range(10, 20);
 inno_update_bits(inno, 0x02, RK3328_PDATA_EN, RK3328_PDATA_EN);

 return IRQ_HANDLED;
}
