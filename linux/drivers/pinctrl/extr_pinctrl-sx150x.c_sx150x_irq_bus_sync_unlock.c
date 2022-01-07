
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sense; int masked; } ;
struct sx150x_pinctrl {int lock; TYPE_2__ irq; TYPE_1__* data; int regmap; } ;
struct irq_data {int dummy; } ;
struct TYPE_3__ {int reg_sense; int reg_irq_mask; } ;


 struct sx150x_pinctrl* gpiochip_get_data (int ) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void sx150x_irq_bus_sync_unlock(struct irq_data *d)
{
 struct sx150x_pinctrl *pctl =
   gpiochip_get_data(irq_data_get_irq_chip_data(d));

 regmap_write(pctl->regmap, pctl->data->reg_irq_mask, pctl->irq.masked);
 regmap_write(pctl->regmap, pctl->data->reg_sense, pctl->irq.sense);
 mutex_unlock(&pctl->lock);
}
