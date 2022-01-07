
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct hwbus_priv {TYPE_1__* pdata; TYPE_2__* func; } ;
struct TYPE_5__ {int num; } ;
struct TYPE_4__ {int irq; } ;


 int BIT (int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 int SDIO_CCCR_IENx ;
 scalar_t__ WARN_ON (int) ;
 int cw1200_gpio_hardirq ;
 int cw1200_gpio_irq ;
 int enable_irq_wake (int ) ;
 int request_threaded_irq (int ,int ,int ,int,char*,struct hwbus_priv*) ;
 int sdio_f0_readb (TYPE_2__*,int ,int*) ;
 int sdio_f0_writeb (TYPE_2__*,int ,int ,int*) ;

__attribute__((used)) static int cw1200_request_irq(struct hwbus_priv *self)
{
 int ret;
 u8 cccr;

 cccr = sdio_f0_readb(self->func, SDIO_CCCR_IENx, &ret);
 if (WARN_ON(ret))
  goto err;


 cccr |= BIT(0);


 cccr |= BIT(self->func->num);

 sdio_f0_writeb(self->func, cccr, SDIO_CCCR_IENx, &ret);
 if (WARN_ON(ret))
  goto err;

 ret = enable_irq_wake(self->pdata->irq);
 if (WARN_ON(ret))
  goto err;


 ret = request_threaded_irq(self->pdata->irq, cw1200_gpio_hardirq,
        cw1200_gpio_irq,
        IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
        "cw1200_wlan_irq", self);
 if (WARN_ON(ret))
  goto err;

 return 0;

err:
 return ret;
}
