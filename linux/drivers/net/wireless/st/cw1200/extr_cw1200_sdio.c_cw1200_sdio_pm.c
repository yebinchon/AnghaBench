
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwbus_priv {TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int irq_set_irq_wake (scalar_t__,int) ;

__attribute__((used)) static int cw1200_sdio_pm(struct hwbus_priv *self, bool suspend)
{
 int ret = 0;

 if (self->pdata->irq)
  ret = irq_set_irq_wake(self->pdata->irq, suspend);
 return ret;
}
