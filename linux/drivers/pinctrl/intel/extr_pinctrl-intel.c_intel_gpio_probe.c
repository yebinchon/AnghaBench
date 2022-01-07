
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int flags; int irq_set_wake; int irq_set_type; int irq_unmask; int irq_mask; int irq_ack; void* name; } ;
struct TYPE_7__ {int base; int parent; void* label; int ngpio; } ;
struct intel_pinctrl {int irq; int ncommunities; TYPE_3__ irqchip; TYPE_1__ chip; int dev; struct intel_community* communities; } ;
struct intel_community {int dummy; } ;


 int IRQCHIP_MASK_ON_SUSPEND ;
 int IRQF_NO_THREAD ;
 int IRQF_SHARED ;
 int IRQ_TYPE_NONE ;
 int dev_err (int ,char*) ;
 void* dev_name (int ) ;
 int devm_gpiochip_add_data (int ,TYPE_1__*,struct intel_pinctrl*) ;
 int devm_request_irq (int ,int,int ,int,void*,struct intel_pinctrl*) ;
 int gpiochip_irqchip_add (TYPE_1__*,TYPE_3__*,int ,int ,int ) ;
 int gpiochip_set_chained_irqchip (TYPE_1__*,TYPE_3__*,int,int *) ;
 int handle_bad_irq ;
 int intel_gpio_add_pin_ranges (struct intel_pinctrl*,struct intel_community*) ;
 TYPE_1__ intel_gpio_chip ;
 int intel_gpio_irq ;
 int intel_gpio_irq_ack ;
 int intel_gpio_irq_mask ;
 int intel_gpio_irq_type ;
 int intel_gpio_irq_unmask ;
 int intel_gpio_irq_wake ;
 int intel_gpio_ngpio (struct intel_pinctrl*) ;

__attribute__((used)) static int intel_gpio_probe(struct intel_pinctrl *pctrl, int irq)
{
 int ret, i;

 pctrl->chip = intel_gpio_chip;


 pctrl->chip.ngpio = intel_gpio_ngpio(pctrl);
 pctrl->chip.label = dev_name(pctrl->dev);
 pctrl->chip.parent = pctrl->dev;
 pctrl->chip.base = -1;
 pctrl->irq = irq;


 pctrl->irqchip.name = dev_name(pctrl->dev);
 pctrl->irqchip.irq_ack = intel_gpio_irq_ack;
 pctrl->irqchip.irq_mask = intel_gpio_irq_mask;
 pctrl->irqchip.irq_unmask = intel_gpio_irq_unmask;
 pctrl->irqchip.irq_set_type = intel_gpio_irq_type;
 pctrl->irqchip.irq_set_wake = intel_gpio_irq_wake;
 pctrl->irqchip.flags = IRQCHIP_MASK_ON_SUSPEND;

 ret = devm_gpiochip_add_data(pctrl->dev, &pctrl->chip, pctrl);
 if (ret) {
  dev_err(pctrl->dev, "failed to register gpiochip\n");
  return ret;
 }

 for (i = 0; i < pctrl->ncommunities; i++) {
  struct intel_community *community = &pctrl->communities[i];

  ret = intel_gpio_add_pin_ranges(pctrl, community);
  if (ret) {
   dev_err(pctrl->dev, "failed to add GPIO pin range\n");
   return ret;
  }
 }






 ret = devm_request_irq(pctrl->dev, irq, intel_gpio_irq,
          IRQF_SHARED | IRQF_NO_THREAD,
          dev_name(pctrl->dev), pctrl);
 if (ret) {
  dev_err(pctrl->dev, "failed to request interrupt\n");
  return ret;
 }

 ret = gpiochip_irqchip_add(&pctrl->chip, &pctrl->irqchip, 0,
       handle_bad_irq, IRQ_TYPE_NONE);
 if (ret) {
  dev_err(pctrl->dev, "failed to add irqchip\n");
  return ret;
 }

 gpiochip_set_chained_irqchip(&pctrl->chip, &pctrl->irqchip, irq, ((void*)0));
 return 0;
}
