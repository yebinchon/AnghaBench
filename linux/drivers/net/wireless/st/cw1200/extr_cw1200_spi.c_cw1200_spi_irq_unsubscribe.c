
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwbus_priv {TYPE_1__* func; } ;
struct TYPE_2__ {int irq; } ;


 int disable_irq_wake (int ) ;
 int free_irq (int ,struct hwbus_priv*) ;
 int pr_debug (char*) ;

__attribute__((used)) static int cw1200_spi_irq_unsubscribe(struct hwbus_priv *self)
{
 int ret = 0;

 pr_debug("SW IRQ unsubscribe\n");
 disable_irq_wake(self->func->irq);
 free_irq(self->func->irq, self);

 return ret;
}
