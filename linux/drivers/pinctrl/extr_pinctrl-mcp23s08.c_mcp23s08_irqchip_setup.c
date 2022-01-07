
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int parent; } ;
struct mcp23s08 {int irq; int irq_chip; struct gpio_chip chip; } ;


 int IRQ_TYPE_NONE ;
 int dev_err (int ,char*,int) ;
 int gpiochip_irqchip_add_nested (struct gpio_chip*,int *,int ,int ,int ) ;
 int gpiochip_set_nested_irqchip (struct gpio_chip*,int *,int ) ;
 int handle_simple_irq ;

__attribute__((used)) static int mcp23s08_irqchip_setup(struct mcp23s08 *mcp)
{
 struct gpio_chip *chip = &mcp->chip;
 int err;

 err = gpiochip_irqchip_add_nested(chip,
        &mcp->irq_chip,
        0,
        handle_simple_irq,
        IRQ_TYPE_NONE);
 if (err) {
  dev_err(chip->parent,
   "could not connect irqchip to gpiochip: %d\n", err);
  return err;
 }

 gpiochip_set_nested_irqchip(chip,
        &mcp->irq_chip,
        mcp->irq);

 return 0;
}
