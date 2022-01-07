
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwbus_priv {int func; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int cw1200_request_irq (struct hwbus_priv*) ;
 int cw1200_sdio_irq_handler ;
 int pr_debug (char*) ;
 int sdio_claim_host (int ) ;
 int sdio_claim_irq (int ,int ) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static int cw1200_sdio_irq_subscribe(struct hwbus_priv *self)
{
 int ret = 0;

 pr_debug("SW IRQ subscribe\n");
 sdio_claim_host(self->func);
 if (self->pdata->irq)
  ret = cw1200_request_irq(self);
 else
  ret = sdio_claim_irq(self->func, cw1200_sdio_irq_handler);

 sdio_release_host(self->func);
 return ret;
}
