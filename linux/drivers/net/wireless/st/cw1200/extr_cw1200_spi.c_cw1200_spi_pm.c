
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwbus_priv {TYPE_1__* func; } ;
struct TYPE_2__ {int irq; } ;


 int irq_set_irq_wake (int ,int) ;

__attribute__((used)) static int cw1200_spi_pm(struct hwbus_priv *self, bool suspend)
{
 return irq_set_irq_wake(self->func->irq, suspend);
}
