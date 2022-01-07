
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int domain; int init_valid_mask; } ;
struct gpio_chip {int base; TYPE_2__ irq; int parent; int label; scalar_t__ ngpio; } ;
struct TYPE_7__ {char* name; int flags; int irq_set_type; int irq_unmask; int irq_mask; int irq_ack; int irq_startup; } ;
struct chv_pinctrl {TYPE_3__ irqchip; int dev; scalar_t__ regs; struct chv_community* community; struct gpio_chip chip; } ;
struct chv_gpio_pinrange {scalar_t__ npins; int base; } ;
struct chv_community {int npins; int ngpio_ranges; struct chv_gpio_pinrange* gpio_ranges; int nirqs; TYPE_1__* pins; } ;
struct TYPE_5__ {scalar_t__ number; } ;


 scalar_t__ CHV_INTMASK ;
 scalar_t__ CHV_INTSTAT ;
 int GENMASK (int,int ) ;
 int IRQCHIP_SKIP_SET_WAKE ;
 int IRQ_TYPE_NONE ;
 int NUMA_NO_NODE ;
 struct gpio_chip chv_gpio_chip ;
 int chv_gpio_irq_ack ;
 int chv_gpio_irq_handler ;
 int chv_gpio_irq_mask ;
 int chv_gpio_irq_startup ;
 int chv_gpio_irq_type ;
 int chv_gpio_irq_unmask ;
 int chv_init_irq_valid_mask ;
 int chv_no_valid_mask ;
 int chv_writel (int,scalar_t__) ;
 int dev_err (int ,char*) ;
 int dev_name (int ) ;
 int devm_gpiochip_add_data (int ,struct gpio_chip*,struct chv_pinctrl*) ;
 int devm_irq_alloc_descs (int ,int,int ,int,int ) ;
 int dmi_check_system (int ) ;
 int gpiochip_add_pin_range (struct gpio_chip*,int ,int ,int ,scalar_t__) ;
 int gpiochip_irqchip_add (struct gpio_chip*,TYPE_3__*,int ,int ,int ) ;
 int gpiochip_set_chained_irqchip (struct gpio_chip*,TYPE_3__*,int,int ) ;
 int handle_bad_irq ;
 int irq_domain_associate_many (int ,int,int ,scalar_t__) ;

__attribute__((used)) static int chv_gpio_probe(struct chv_pinctrl *pctrl, int irq)
{
 const struct chv_gpio_pinrange *range;
 struct gpio_chip *chip = &pctrl->chip;
 bool need_valid_mask = !dmi_check_system(chv_no_valid_mask);
 const struct chv_community *community = pctrl->community;
 int ret, i, irq_base;

 *chip = chv_gpio_chip;

 chip->ngpio = community->pins[community->npins - 1].number + 1;
 chip->label = dev_name(pctrl->dev);
 chip->parent = pctrl->dev;
 chip->base = -1;
 if (need_valid_mask)
  chip->irq.init_valid_mask = chv_init_irq_valid_mask;

 ret = devm_gpiochip_add_data(pctrl->dev, chip, pctrl);
 if (ret) {
  dev_err(pctrl->dev, "Failed to register gpiochip\n");
  return ret;
 }

 for (i = 0; i < community->ngpio_ranges; i++) {
  range = &community->gpio_ranges[i];
  ret = gpiochip_add_pin_range(chip, dev_name(pctrl->dev),
          range->base, range->base,
          range->npins);
  if (ret) {
   dev_err(pctrl->dev, "failed to add GPIO pin range\n");
   return ret;
  }
 }
 if (!need_valid_mask) {




  chv_writel(GENMASK(31, pctrl->community->nirqs),
      pctrl->regs + CHV_INTMASK);
 }


 chv_writel(0xffff, pctrl->regs + CHV_INTSTAT);

 if (!need_valid_mask) {
  irq_base = devm_irq_alloc_descs(pctrl->dev, -1, 0,
      community->npins, NUMA_NO_NODE);
  if (irq_base < 0) {
   dev_err(pctrl->dev, "Failed to allocate IRQ numbers\n");
   return irq_base;
  }
 }

 pctrl->irqchip.name = "chv-gpio";
 pctrl->irqchip.irq_startup = chv_gpio_irq_startup;
 pctrl->irqchip.irq_ack = chv_gpio_irq_ack;
 pctrl->irqchip.irq_mask = chv_gpio_irq_mask;
 pctrl->irqchip.irq_unmask = chv_gpio_irq_unmask;
 pctrl->irqchip.irq_set_type = chv_gpio_irq_type;
 pctrl->irqchip.flags = IRQCHIP_SKIP_SET_WAKE;

 ret = gpiochip_irqchip_add(chip, &pctrl->irqchip, 0,
       handle_bad_irq, IRQ_TYPE_NONE);
 if (ret) {
  dev_err(pctrl->dev, "failed to add IRQ chip\n");
  return ret;
 }

 if (!need_valid_mask) {
  for (i = 0; i < community->ngpio_ranges; i++) {
   range = &community->gpio_ranges[i];

   irq_domain_associate_many(chip->irq.domain, irq_base,
        range->base, range->npins);
   irq_base += range->npins;
  }
 }

 gpiochip_set_chained_irqchip(chip, &pctrl->irqchip, irq,
         chv_gpio_irq_handler);
 return 0;
}
