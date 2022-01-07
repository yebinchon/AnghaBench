
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dwc3 {int dev; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_get_irq_byname_optional (struct platform_device*,char*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int dwc3_host_get_irq(struct dwc3 *dwc)
{
 struct platform_device *dwc3_pdev = to_platform_device(dwc->dev);
 int irq;

 irq = platform_get_irq_byname_optional(dwc3_pdev, "host");
 if (irq > 0)
  goto out;

 if (irq == -EPROBE_DEFER)
  goto out;

 irq = platform_get_irq_byname_optional(dwc3_pdev, "dwc_usb3");
 if (irq > 0)
  goto out;

 if (irq == -EPROBE_DEFER)
  goto out;

 irq = platform_get_irq(dwc3_pdev, 0);
 if (irq > 0)
  goto out;

 if (!irq)
  irq = -EINVAL;

out:
 return irq;
}
