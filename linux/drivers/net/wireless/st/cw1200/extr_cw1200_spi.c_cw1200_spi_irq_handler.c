
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwbus_priv {scalar_t__ core; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int cw1200_irq_handler (scalar_t__) ;
 int cw1200_spi_lock (struct hwbus_priv*) ;
 int cw1200_spi_unlock (struct hwbus_priv*) ;

__attribute__((used)) static irqreturn_t cw1200_spi_irq_handler(int irq, void *dev_id)
{
 struct hwbus_priv *self = dev_id;

 if (self->core) {
  cw1200_spi_lock(self);
  cw1200_irq_handler(self->core);
  cw1200_spi_unlock(self);
  return IRQ_HANDLED;
 } else {
  return IRQ_NONE;
 }
}
