
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct aspeed_lpc_snoop {int irq; } ;


 int DEVICE_NAME ;
 int ENODEV ;
 int IRQF_SHARED ;
 int aspeed_lpc_snoop_irq ;
 int dev_warn (struct device*,char*,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct aspeed_lpc_snoop*) ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int aspeed_lpc_snoop_config_irq(struct aspeed_lpc_snoop *lpc_snoop,
           struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int rc;

 lpc_snoop->irq = platform_get_irq(pdev, 0);
 if (!lpc_snoop->irq)
  return -ENODEV;

 rc = devm_request_irq(dev, lpc_snoop->irq,
         aspeed_lpc_snoop_irq, IRQF_SHARED,
         DEVICE_NAME, lpc_snoop);
 if (rc < 0) {
  dev_warn(dev, "Unable to request IRQ %d\n", lpc_snoop->irq);
  lpc_snoop->irq = 0;
  return rc;
 }

 return 0;
}
