
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gemini_powercon {int dev; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int GEMINI_CTRL_IRQ_CLR ;
 scalar_t__ GEMINI_PWC_CTRLREG ;
 scalar_t__ GEMINI_PWC_STATREG ;



 int IRQ_HANDLED ;
 int dev_info (int ,char*) ;
 int orderly_poweroff (int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t gemini_powerbutton_interrupt(int irq, void *data)
{
 struct gemini_powercon *gpw = data;
 u32 val;


 val = readl(gpw->base + GEMINI_PWC_CTRLREG);
 val |= GEMINI_CTRL_IRQ_CLR;
 writel(val, gpw->base + GEMINI_PWC_CTRLREG);

 val = readl(gpw->base + GEMINI_PWC_STATREG);
 val &= 0x70U;
 switch (val) {
 case 130:





  dev_info(gpw->dev, "infrared poweroff - ignored\n");
  break;
 case 128:
  dev_info(gpw->dev, "RTC poweroff\n");
  orderly_poweroff(1);
  break;
 case 129:
  dev_info(gpw->dev, "poweroff button pressed\n");
  orderly_poweroff(1);
  break;
 default:
  dev_info(gpw->dev, "other power management IRQ\n");
  break;
 }

 return IRQ_HANDLED;
}
