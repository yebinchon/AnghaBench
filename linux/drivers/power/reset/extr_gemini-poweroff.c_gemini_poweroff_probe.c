
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct gemini_powercon {scalar_t__ base; struct device* dev; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GEMINI_CTRL_ENABLE ;
 int GEMINI_CTRL_IRQ_CLR ;
 scalar_t__ GEMINI_PWC_CTRLREG ;
 int GEMINI_PWC_ID ;
 scalar_t__ GEMINI_PWC_IDREG ;
 scalar_t__ GEMINI_PWC_STATREG ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*) ;
 scalar_t__ devm_ioremap_resource (struct device*,struct resource*) ;
 struct gemini_powercon* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct gemini_powercon*) ;
 int gemini_powerbutton_interrupt ;
 int gemini_poweroff ;
 struct gemini_powercon* gpw_poweroff ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_power_off ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int gemini_poweroff_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *res;
 struct gemini_powercon *gpw;
 u32 val;
 int irq;
 int ret;

 gpw = devm_kzalloc(dev, sizeof(*gpw), GFP_KERNEL);
 if (!gpw)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 gpw->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(gpw->base))
  return PTR_ERR(gpw->base);

 irq = platform_get_irq(pdev, 0);
 if (!irq)
  return -EINVAL;

 gpw->dev = dev;

 val = readl(gpw->base + GEMINI_PWC_IDREG);
 val &= 0xFFFFFF00U;
 if (val != GEMINI_PWC_ID) {
  dev_err(dev, "wrong power controller ID: %08x\n",
   val);
  return -ENODEV;
 }







 val = readl(gpw->base + GEMINI_PWC_CTRLREG);
 val |= GEMINI_CTRL_ENABLE;
 writel(val, gpw->base + GEMINI_PWC_CTRLREG);


 val = readl(gpw->base + GEMINI_PWC_CTRLREG);
 val |= GEMINI_CTRL_IRQ_CLR;
 writel(val, gpw->base + GEMINI_PWC_CTRLREG);


 val = readl(gpw->base + GEMINI_PWC_STATREG);
 while (val & 0x70U)
  val = readl(gpw->base + GEMINI_PWC_STATREG);


 val = readl(gpw->base + GEMINI_PWC_CTRLREG);
 val |= GEMINI_CTRL_IRQ_CLR;
 writel(val, gpw->base + GEMINI_PWC_CTRLREG);

 ret = devm_request_irq(dev, irq, gemini_powerbutton_interrupt, 0,
          "poweroff", gpw);
 if (ret)
  return ret;

 pm_power_off = gemini_poweroff;
 gpw_poweroff = gpw;

 dev_info(dev, "Gemini poweroff driver registered\n");

 return 0;
}
