
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct amvdec_core {int esparser_reset; } ;


 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct amvdec_core*) ;
 int devm_reset_control_get_exclusive (struct device*,char*) ;
 int esparser_isr ;
 int platform_get_irq_byname (struct platform_device*,char*) ;

int esparser_init(struct platform_device *pdev, struct amvdec_core *core)
{
 struct device *dev = &pdev->dev;
 int ret;
 int irq;

 irq = platform_get_irq_byname(pdev, "esparser");
 if (irq < 0)
  return irq;

 ret = devm_request_irq(dev, irq, esparser_isr, IRQF_SHARED,
          "esparserirq", core);
 if (ret) {
  dev_err(dev, "Failed requesting ESPARSER IRQ\n");
  return ret;
 }

 core->esparser_reset =
  devm_reset_control_get_exclusive(dev, "esparser");
 if (IS_ERR(core->esparser_reset)) {
  dev_err(dev, "Failed to get esparser_reset\n");
  return PTR_ERR(core->esparser_reset);
 }

 return 0;
}
