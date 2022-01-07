
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct gpio_irq_chip {int num_parents; int * parents; int handler; int default_type; int parent_handler; TYPE_2__* chip; } ;
struct gpio_chip {int base; unsigned int ngpio; struct gpio_irq_chip irq; int init_valid_mask; int of_node; int owner; TYPE_3__* parent; int label; } ;
struct TYPE_7__ {char* name; int irq_release_resources; int irq_request_resources; int irq_set_wake; int irq_set_type; int irq_ack; int irq_unmask; int irq_mask; int irq_enable; } ;
struct msm_pinctrl {struct gpio_chip chip; TYPE_3__* dev; int irq; TYPE_2__ irq_chip; TYPE_1__* soc; } ;
struct TYPE_8__ {int of_node; } ;
struct TYPE_6__ {unsigned int ngpios; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQ_TYPE_NONE ;
 unsigned int MAX_NR_GPIO ;
 int THIS_MODULE ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (TYPE_3__*,char*) ;
 int dev_name (TYPE_3__*) ;
 int * devm_kcalloc (TYPE_3__*,int,int,int ) ;
 int gpiochip_add_data (struct gpio_chip*,struct msm_pinctrl*) ;
 int gpiochip_add_pin_range (struct gpio_chip*,int ,int ,int ,unsigned int) ;
 int gpiochip_remove (struct gpio_chip*) ;
 int handle_bad_irq ;
 int msm_gpio_init_valid_mask ;
 int msm_gpio_irq_ack ;
 int msm_gpio_irq_enable ;
 int msm_gpio_irq_handler ;
 int msm_gpio_irq_mask ;
 int msm_gpio_irq_relres ;
 int msm_gpio_irq_reqres ;
 int msm_gpio_irq_set_type ;
 int msm_gpio_irq_set_wake ;
 int msm_gpio_irq_unmask ;
 scalar_t__ msm_gpio_needs_valid_mask (struct msm_pinctrl*) ;
 int of_property_read_bool (int ,char*) ;

__attribute__((used)) static int msm_gpio_init(struct msm_pinctrl *pctrl)
{
 struct gpio_chip *chip;
 struct gpio_irq_chip *girq;
 int ret;
 unsigned ngpio = pctrl->soc->ngpios;

 if (WARN_ON(ngpio > MAX_NR_GPIO))
  return -EINVAL;

 chip = &pctrl->chip;
 chip->base = -1;
 chip->ngpio = ngpio;
 chip->label = dev_name(pctrl->dev);
 chip->parent = pctrl->dev;
 chip->owner = THIS_MODULE;
 chip->of_node = pctrl->dev->of_node;
 if (msm_gpio_needs_valid_mask(pctrl))
  chip->init_valid_mask = msm_gpio_init_valid_mask;

 pctrl->irq_chip.name = "msmgpio";
 pctrl->irq_chip.irq_enable = msm_gpio_irq_enable;
 pctrl->irq_chip.irq_mask = msm_gpio_irq_mask;
 pctrl->irq_chip.irq_unmask = msm_gpio_irq_unmask;
 pctrl->irq_chip.irq_ack = msm_gpio_irq_ack;
 pctrl->irq_chip.irq_set_type = msm_gpio_irq_set_type;
 pctrl->irq_chip.irq_set_wake = msm_gpio_irq_set_wake;
 pctrl->irq_chip.irq_request_resources = msm_gpio_irq_reqres;
 pctrl->irq_chip.irq_release_resources = msm_gpio_irq_relres;

 girq = &chip->irq;
 girq->chip = &pctrl->irq_chip;
 girq->parent_handler = msm_gpio_irq_handler;
 girq->num_parents = 1;
 girq->parents = devm_kcalloc(pctrl->dev, 1, sizeof(*girq->parents),
         GFP_KERNEL);
 if (!girq->parents)
  return -ENOMEM;
 girq->default_type = IRQ_TYPE_NONE;
 girq->handler = handle_bad_irq;
 girq->parents[0] = pctrl->irq;

 ret = gpiochip_add_data(&pctrl->chip, pctrl);
 if (ret) {
  dev_err(pctrl->dev, "Failed register gpiochip\n");
  return ret;
 }
 if (!of_property_read_bool(pctrl->dev->of_node, "gpio-ranges")) {
  ret = gpiochip_add_pin_range(&pctrl->chip,
   dev_name(pctrl->dev), 0, 0, chip->ngpio);
  if (ret) {
   dev_err(pctrl->dev, "Failed to add pin range\n");
   gpiochip_remove(&pctrl->chip);
   return ret;
  }
 }

 return 0;
}
