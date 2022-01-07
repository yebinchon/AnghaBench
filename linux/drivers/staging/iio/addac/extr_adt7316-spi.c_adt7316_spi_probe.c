
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {scalar_t__ max_speed_hz; int modalias; int dev; int irq; } ;
struct adt7316_bus {int multi_write; int multi_read; int (* write ) (struct spi_device*,int ,int ) ;int read; int irq; struct spi_device* client; } ;


 scalar_t__ ADT7316_SPI_MAX_FREQ_HZ ;
 int EINVAL ;
 int adt7316_probe (int *,struct adt7316_bus*,int ) ;
 int adt7316_spi_multi_read ;
 int adt7316_spi_multi_write ;
 int adt7316_spi_read ;
 int adt7316_spi_write (struct spi_device*,int ,int ) ;
 int dev_err (int *,char*,scalar_t__) ;

__attribute__((used)) static int adt7316_spi_probe(struct spi_device *spi_dev)
{
 struct adt7316_bus bus = {
  .client = spi_dev,
  .irq = spi_dev->irq,
  .read = adt7316_spi_read,
  .write = adt7316_spi_write,
  .multi_read = adt7316_spi_multi_read,
  .multi_write = adt7316_spi_multi_write,
 };


 if (spi_dev->max_speed_hz > ADT7316_SPI_MAX_FREQ_HZ) {
  dev_err(&spi_dev->dev, "SPI CLK %d Hz?\n",
   spi_dev->max_speed_hz);
  return -EINVAL;
 }


 adt7316_spi_write(spi_dev, 0, 0);
 adt7316_spi_write(spi_dev, 0, 0);
 adt7316_spi_write(spi_dev, 0, 0);

 return adt7316_probe(&spi_dev->dev, &bus, spi_dev->modalias);
}
