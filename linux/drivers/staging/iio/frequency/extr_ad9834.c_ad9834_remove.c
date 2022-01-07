
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ad9834_state {int reg; int mclk; } ;


 int clk_disable_unprepare (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ad9834_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ad9834_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct ad9834_state *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 clk_disable_unprepare(st->mclk);
 regulator_disable(st->reg);

 return 0;
}
