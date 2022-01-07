
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int bits_per_word; int dev; int mode; } ;
struct rtc_device {int dummy; } ;


 scalar_t__ IS_ERR (struct rtc_device*) ;
 int MAX6902_REG_SECONDS ;
 int PTR_ERR (struct rtc_device*) ;
 int SPI_MODE_3 ;
 int THIS_MODULE ;
 struct rtc_device* devm_rtc_device_register (int *,char*,int *,int ) ;
 int max6902_get_reg (int *,int ,unsigned char*) ;
 int max6902_rtc_ops ;
 int spi_set_drvdata (struct spi_device*,struct rtc_device*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int max6902_probe(struct spi_device *spi)
{
 struct rtc_device *rtc;
 unsigned char tmp;
 int res;

 spi->mode = SPI_MODE_3;
 spi->bits_per_word = 8;
 spi_setup(spi);

 res = max6902_get_reg(&spi->dev, MAX6902_REG_SECONDS, &tmp);
 if (res != 0)
  return res;

 rtc = devm_rtc_device_register(&spi->dev, "max6902",
    &max6902_rtc_ops, THIS_MODULE);
 if (IS_ERR(rtc))
  return PTR_ERR(rtc);

 spi_set_drvdata(spi, rtc);
 return 0;
}
