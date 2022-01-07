
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct hwbus_priv {int * core; } ;


 int cw1200_core_release (int *) ;
 int cw1200_sdio_irq_unsubscribe (struct hwbus_priv*) ;
 int kfree (struct hwbus_priv*) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_disable_func (struct sdio_func*) ;
 struct hwbus_priv* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_set_drvdata (struct sdio_func*,int *) ;

__attribute__((used)) static void cw1200_sdio_disconnect(struct sdio_func *func)
{
 struct hwbus_priv *self = sdio_get_drvdata(func);

 if (self) {
  cw1200_sdio_irq_unsubscribe(self);
  if (self->core) {
   cw1200_core_release(self->core);
   self->core = ((void*)0);
  }
  sdio_claim_host(func);
  sdio_disable_func(func);
  sdio_release_host(func);
  sdio_set_drvdata(func, ((void*)0));
  kfree(self);
 }
}
