
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwbus_priv {int func; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int disable_irq_wake (scalar_t__) ;
 int free_irq (scalar_t__,struct hwbus_priv*) ;
 int pr_debug (char*) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;
 int sdio_release_irq (int ) ;

__attribute__((used)) static int cw1200_sdio_irq_unsubscribe(struct hwbus_priv *self)
{
 int ret = 0;

 pr_debug("SW IRQ unsubscribe\n");

 if (self->pdata->irq) {
  disable_irq_wake(self->pdata->irq);
  free_irq(self->pdata->irq, self);
 } else {
  sdio_claim_host(self->func);
  ret = sdio_release_irq(self->func);
  sdio_release_host(self->func);
 }
 return ret;
}
