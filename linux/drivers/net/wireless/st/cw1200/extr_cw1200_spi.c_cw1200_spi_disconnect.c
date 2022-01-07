
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct hwbus_priv {int * core; } ;


 int cw1200_core_release (int *) ;
 int cw1200_spi_irq_unsubscribe (struct hwbus_priv*) ;
 int cw1200_spi_off (int ) ;
 int dev_get_platdata (int *) ;
 struct hwbus_priv* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int cw1200_spi_disconnect(struct spi_device *func)
{
 struct hwbus_priv *self = spi_get_drvdata(func);

 if (self) {
  cw1200_spi_irq_unsubscribe(self);
  if (self->core) {
   cw1200_core_release(self->core);
   self->core = ((void*)0);
  }
 }
 cw1200_spi_off(dev_get_platdata(&func->dev));

 return 0;
}
