
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {scalar_t__ irq; int dev; } ;
struct ds1305 {int work; int flags; } ;


 int FLAG_EXITING ;
 int cancel_work_sync (int *) ;
 int devm_free_irq (int *,scalar_t__,struct ds1305*) ;
 int set_bit (int ,int *) ;
 struct ds1305* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ds1305_remove(struct spi_device *spi)
{
 struct ds1305 *ds1305 = spi_get_drvdata(spi);


 if (spi->irq) {
  set_bit(FLAG_EXITING, &ds1305->flags);
  devm_free_irq(&spi->dev, spi->irq, ds1305);
  cancel_work_sync(&ds1305->work);
 }

 return 0;
}
