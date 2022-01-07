
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inno_hdmi_phy {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int inno_read (struct inno_hdmi_phy*,int) ;
 int inno_write (struct inno_hdmi_phy*,int,int) ;

__attribute__((used)) static irqreturn_t inno_hdmi_phy_rk3328_hardirq(int irq, void *dev_id)
{
 struct inno_hdmi_phy *inno = dev_id;
 int intr_stat1, intr_stat2, intr_stat3;

 intr_stat1 = inno_read(inno, 0x04);
 intr_stat2 = inno_read(inno, 0x06);
 intr_stat3 = inno_read(inno, 0x08);

 if (intr_stat1)
  inno_write(inno, 0x04, intr_stat1);
 if (intr_stat2)
  inno_write(inno, 0x06, intr_stat2);
 if (intr_stat3)
  inno_write(inno, 0x08, intr_stat3);

 if (intr_stat1 || intr_stat2 || intr_stat3)
  return IRQ_WAKE_THREAD;

 return IRQ_HANDLED;
}
