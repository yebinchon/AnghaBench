
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; int irq; } ;
struct iio_dev {int dummy; } ;
struct ade7854_state {struct spi_device* spi; int irq; int write_reg; int read_reg; } ;


 int ENOMEM ;
 int ade7854_probe (struct iio_dev*,int *) ;
 int ade7854_spi_read_reg ;
 int ade7854_spi_write_reg ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 struct ade7854_state* iio_priv (struct iio_dev*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ade7854_spi_probe(struct spi_device *spi)
{
 struct ade7854_state *st;
 struct iio_dev *indio_dev;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;
 st = iio_priv(indio_dev);
 spi_set_drvdata(spi, indio_dev);
 st->read_reg = ade7854_spi_read_reg;
 st->write_reg = ade7854_spi_write_reg;
 st->irq = spi->irq;
 st->spi = spi;

 return ade7854_probe(indio_dev, &spi->dev);
}
