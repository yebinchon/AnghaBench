
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct hwbus_priv {scalar_t__ core; } ;


 int cw1200_irq_handler (scalar_t__) ;
 struct hwbus_priv* sdio_get_drvdata (struct sdio_func*) ;

__attribute__((used)) static void cw1200_sdio_irq_handler(struct sdio_func *func)
{
 struct hwbus_priv *self = sdio_get_drvdata(func);


 if (self->core)
  cw1200_irq_handler(self->core);
}
