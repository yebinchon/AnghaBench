
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_bandgap {scalar_t__ irq; } ;
struct platform_device {int dev; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 int dev_err (int *,char*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int request_threaded_irq (int,int *,int ,int,char*,struct ti_bandgap*) ;
 int ti_bandgap_talert_irq_handler ;

__attribute__((used)) static int ti_bandgap_talert_init(struct ti_bandgap *bgp,
      struct platform_device *pdev)
{
 int ret;

 bgp->irq = platform_get_irq(pdev, 0);
 if (bgp->irq < 0) {
  dev_err(&pdev->dev, "get_irq failed\n");
  return bgp->irq;
 }
 ret = request_threaded_irq(bgp->irq, ((void*)0),
       ti_bandgap_talert_irq_handler,
       IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
       "talert", bgp);
 if (ret) {
  dev_err(&pdev->dev, "Request threaded irq failed.\n");
  return ret;
 }

 return 0;
}
