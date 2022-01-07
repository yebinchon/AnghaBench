
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct abx500_pinctrl {int irq_cluster_size; TYPE_1__* parent; struct abx500_gpio_irq_cluster* irq_cluster; } ;
struct abx500_gpio_irq_cluster {int start; int end; int to_irq; } ;
struct TYPE_2__ {int domain; } ;


 int EINVAL ;
 struct abx500_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int irq_create_mapping (int ,int) ;

__attribute__((used)) static int abx500_gpio_to_irq(struct gpio_chip *chip, unsigned offset)
{
 struct abx500_pinctrl *pct = gpiochip_get_data(chip);

 int gpio = offset + 1;
 int hwirq;
 int i;

 for (i = 0; i < pct->irq_cluster_size; i++) {
  struct abx500_gpio_irq_cluster *cluster =
   &pct->irq_cluster[i];

  if (gpio >= cluster->start && gpio <= cluster->end) {






   hwirq = gpio - cluster->start + cluster->to_irq;
   return irq_create_mapping(pct->parent->domain, hwirq);
  }
 }

 return -EINVAL;
}
