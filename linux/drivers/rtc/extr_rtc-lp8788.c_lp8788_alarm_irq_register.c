
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int end; } ;
struct platform_device {int dev; } ;
struct lp8788_rtc {scalar_t__ alarm; int irq; struct lp8788* lp; } ;
struct lp8788 {struct irq_domain* irqdm; } ;
struct irq_domain {int dummy; } ;


 int IORESOURCE_IRQ ;
 scalar_t__ LP8788_ALARM_1 ;
 int LP8788_ALM_IRQ ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int ,int ,struct lp8788_rtc*) ;
 int irq_create_mapping (struct irq_domain*,int) ;
 int lp8788_alarm_irq_handler ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,int ) ;

__attribute__((used)) static int lp8788_alarm_irq_register(struct platform_device *pdev,
    struct lp8788_rtc *rtc)
{
 struct resource *r;
 struct lp8788 *lp = rtc->lp;
 struct irq_domain *irqdm = lp->irqdm;
 int irq;

 rtc->irq = 0;


 r = platform_get_resource_byname(pdev, IORESOURCE_IRQ, LP8788_ALM_IRQ);
 if (!r)
  return 0;

 if (rtc->alarm == LP8788_ALARM_1)
  irq = r->start;
 else
  irq = r->end;

 rtc->irq = irq_create_mapping(irqdm, irq);

 return devm_request_threaded_irq(&pdev->dev, rtc->irq, ((void*)0),
    lp8788_alarm_irq_handler,
    0, LP8788_ALM_IRQ, rtc);
}
