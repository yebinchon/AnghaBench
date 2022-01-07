
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct adis {int dummy; } ;


 int adis_cleanup_buffer_and_trigger (struct adis*,struct iio_dev*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct adis* iio_priv (struct iio_dev*) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int adis16203_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct adis *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 adis_cleanup_buffer_and_trigger(st, indio_dev);

 return 0;
}
