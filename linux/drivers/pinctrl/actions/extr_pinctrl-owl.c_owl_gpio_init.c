
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct gpio_irq_chip {int * parents; int * map; int num_parents; struct owl_pinctrl* parent_handler_data; int parent_handler; int default_type; int handler; TYPE_2__* chip; } ;
struct gpio_chip {int base; int ngpio; struct gpio_irq_chip irq; TYPE_1__* of_node; int owner; TYPE_4__* parent; int label; } ;
struct TYPE_8__ {int irq_set_type; int irq_unmask; int irq_mask; int irq_ack; int name; } ;
struct owl_pinctrl {TYPE_4__* dev; struct gpio_chip chip; TYPE_3__* soc; int * irq; int num_irq; TYPE_2__ irq_chip; } ;
struct owl_gpio_port {int pins; } ;
struct TYPE_10__ {TYPE_1__* of_node; } ;
struct TYPE_9__ {int nports; struct owl_gpio_port* ports; int ngpios; } ;
struct TYPE_7__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQ_TYPE_NONE ;
 int THIS_MODULE ;
 int dev_err (TYPE_4__*,char*) ;
 int dev_name (TYPE_4__*) ;
 int * devm_kcalloc (TYPE_4__*,int ,int,int ) ;
 int gpiochip_add_data (struct gpio_chip*,struct owl_pinctrl*) ;
 int handle_simple_irq ;
 int owl_gpio_irq_ack ;
 int owl_gpio_irq_handler ;
 int owl_gpio_irq_mask ;
 int owl_gpio_irq_set_type ;
 int owl_gpio_irq_unmask ;

__attribute__((used)) static int owl_gpio_init(struct owl_pinctrl *pctrl)
{
 struct gpio_chip *chip;
 struct gpio_irq_chip *gpio_irq;
 int ret, i, j, offset;

 chip = &pctrl->chip;
 chip->base = -1;
 chip->ngpio = pctrl->soc->ngpios;
 chip->label = dev_name(pctrl->dev);
 chip->parent = pctrl->dev;
 chip->owner = THIS_MODULE;
 chip->of_node = pctrl->dev->of_node;

 pctrl->irq_chip.name = chip->of_node->name;
 pctrl->irq_chip.irq_ack = owl_gpio_irq_ack;
 pctrl->irq_chip.irq_mask = owl_gpio_irq_mask;
 pctrl->irq_chip.irq_unmask = owl_gpio_irq_unmask;
 pctrl->irq_chip.irq_set_type = owl_gpio_irq_set_type;

 gpio_irq = &chip->irq;
 gpio_irq->chip = &pctrl->irq_chip;
 gpio_irq->handler = handle_simple_irq;
 gpio_irq->default_type = IRQ_TYPE_NONE;
 gpio_irq->parent_handler = owl_gpio_irq_handler;
 gpio_irq->parent_handler_data = pctrl;
 gpio_irq->num_parents = pctrl->num_irq;
 gpio_irq->parents = pctrl->irq;

 gpio_irq->map = devm_kcalloc(pctrl->dev, chip->ngpio,
    sizeof(*gpio_irq->map), GFP_KERNEL);
 if (!gpio_irq->map)
  return -ENOMEM;

 for (i = 0, offset = 0; i < pctrl->soc->nports; i++) {
  const struct owl_gpio_port *port = &pctrl->soc->ports[i];

  for (j = 0; j < port->pins; j++)
   gpio_irq->map[offset + j] = gpio_irq->parents[i];

  offset += port->pins;
 }

 ret = gpiochip_add_data(&pctrl->chip, pctrl);
 if (ret) {
  dev_err(pctrl->dev, "failed to register gpiochip\n");
  return ret;
 }

 return 0;
}
