
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwbus_priv {TYPE_1__* func; } ;
struct TYPE_2__ {int irq; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 scalar_t__ WARN_ON (int) ;
 int cw1200_spi_irq_handler ;
 int enable_irq_wake (int ) ;
 int free_irq (int ,struct hwbus_priv*) ;
 int pr_debug (char*) ;
 int request_threaded_irq (int ,int *,int ,int,char*,struct hwbus_priv*) ;

__attribute__((used)) static int cw1200_spi_irq_subscribe(struct hwbus_priv *self)
{
 int ret;

 pr_debug("SW IRQ subscribe\n");

 ret = request_threaded_irq(self->func->irq, ((void*)0),
       cw1200_spi_irq_handler,
       IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
       "cw1200_wlan_irq", self);
 if (WARN_ON(ret < 0))
  goto exit;

 ret = enable_irq_wake(self->func->irq);
 if (WARN_ON(ret))
  goto free_irq;

 return 0;

free_irq:
 free_irq(self->func->irq, self);
exit:
 return ret;
}
