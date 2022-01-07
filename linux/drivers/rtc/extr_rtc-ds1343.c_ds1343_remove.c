
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; scalar_t__ irq; } ;
struct ds1343_priv {int mutex; int irqen; } ;


 int RTC_AF ;
 int dev_pm_clear_wake_irq (int *) ;
 int device_init_wakeup (int *,int) ;
 int devm_free_irq (int *,scalar_t__,struct ds1343_priv*) ;
 int ds1343_sysfs_unregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ds1343_priv* spi_get_drvdata (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,int *) ;

__attribute__((used)) static int ds1343_remove(struct spi_device *spi)
{
 struct ds1343_priv *priv = spi_get_drvdata(spi);

 if (spi->irq) {
  mutex_lock(&priv->mutex);
  priv->irqen &= ~RTC_AF;
  mutex_unlock(&priv->mutex);

  dev_pm_clear_wake_irq(&spi->dev);
  device_init_wakeup(&spi->dev, 0);
  devm_free_irq(&spi->dev, spi->irq, priv);
 }

 spi_set_drvdata(spi, ((void*)0));

 ds1343_sysfs_unregister(&spi->dev);

 return 0;
}
