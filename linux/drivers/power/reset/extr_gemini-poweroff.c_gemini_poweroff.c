
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gemini_powercon {scalar_t__ base; int dev; } ;


 int GEMINI_CTRL_ENABLE ;
 int GEMINI_CTRL_IRQ_CLR ;
 int GEMINI_CTRL_SHUTDOWN ;
 scalar_t__ GEMINI_PWC_CTRLREG ;
 int dev_crit (int ,char*) ;
 struct gemini_powercon* gpw_poweroff ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void gemini_poweroff(void)
{
 struct gemini_powercon *gpw = gpw_poweroff;
 u32 val;

 dev_crit(gpw->dev, "Gemini power off\n");
 val = readl(gpw->base + GEMINI_PWC_CTRLREG);
 val |= GEMINI_CTRL_ENABLE | GEMINI_CTRL_IRQ_CLR;
 writel(val, gpw->base + GEMINI_PWC_CTRLREG);

 val &= ~GEMINI_CTRL_ENABLE;
 val |= GEMINI_CTRL_SHUTDOWN;
 writel(val, gpw->base + GEMINI_PWC_CTRLREG);
}
