
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int parent; } ;
struct mcp23s08 {int irq; scalar_t__ irq_active_high; struct gpio_chip chip; } ;


 unsigned long IRQF_ONESHOT ;
 unsigned long IRQF_SHARED ;
 unsigned long IRQF_TRIGGER_HIGH ;
 unsigned long IRQF_TRIGGER_LOW ;
 int dev_err (int ,char*,int ,int) ;
 int dev_name (int ) ;
 int devm_request_threaded_irq (int ,int ,int *,int ,unsigned long,int ,struct mcp23s08*) ;
 int mcp23s08_irq ;

__attribute__((used)) static int mcp23s08_irq_setup(struct mcp23s08 *mcp)
{
 struct gpio_chip *chip = &mcp->chip;
 int err;
 unsigned long irqflags = IRQF_ONESHOT | IRQF_SHARED;

 if (mcp->irq_active_high)
  irqflags |= IRQF_TRIGGER_HIGH;
 else
  irqflags |= IRQF_TRIGGER_LOW;

 err = devm_request_threaded_irq(chip->parent, mcp->irq, ((void*)0),
     mcp23s08_irq,
     irqflags, dev_name(chip->parent), mcp);
 if (err != 0) {
  dev_err(chip->parent, "unable to request IRQ#%d: %d\n",
   mcp->irq, err);
  return err;
 }

 return 0;
}
