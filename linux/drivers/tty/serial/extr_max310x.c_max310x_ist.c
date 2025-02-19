
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max310x_port {TYPE_1__* devtype; int regmap; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int nr; } ;


 scalar_t__ IRQ_HANDLED ;
 int IRQ_RETVAL (int) ;
 int MAX310X_GLOBALIRQ_REG ;
 int WARN_ON_ONCE (int ) ;
 scalar_t__ fls (unsigned int) ;
 scalar_t__ max310x_port_irq (struct max310x_port*,scalar_t__) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static irqreturn_t max310x_ist(int irq, void *dev_id)
{
 struct max310x_port *s = (struct max310x_port *)dev_id;
 bool handled = 0;

 if (s->devtype->nr > 1) {
  do {
   unsigned int val = ~0;

   WARN_ON_ONCE(regmap_read(s->regmap,
       MAX310X_GLOBALIRQ_REG, &val));
   val = ((1 << s->devtype->nr) - 1) & ~val;
   if (!val)
    break;
   if (max310x_port_irq(s, fls(val) - 1) == IRQ_HANDLED)
    handled = 1;
  } while (1);
 } else {
  if (max310x_port_irq(s, 0) == IRQ_HANDLED)
   handled = 1;
 }

 return IRQ_RETVAL(handled);
}
