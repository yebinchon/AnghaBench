
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int bits_per_word; int dev; } ;
struct rtc_device {int dummy; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;


 scalar_t__ IS_ERR (struct rtc_device*) ;
 int M41T94_REG_SECONDS ;
 int PTR_ERR (struct rtc_device*) ;
 int THIS_MODULE ;
 int dev_err (int *,char*) ;
 struct rtc_device* devm_rtc_device_register (int *,int ,int *,int ) ;
 TYPE_2__ m41t94_driver ;
 int m41t94_rtc_ops ;
 int spi_set_drvdata (struct spi_device*,struct rtc_device*) ;
 int spi_setup (struct spi_device*) ;
 int spi_w8r8 (struct spi_device*,int ) ;

__attribute__((used)) static int m41t94_probe(struct spi_device *spi)
{
 struct rtc_device *rtc;
 int res;

 spi->bits_per_word = 8;
 spi_setup(spi);

 res = spi_w8r8(spi, M41T94_REG_SECONDS);
 if (res < 0) {
  dev_err(&spi->dev, "not found.\n");
  return res;
 }

 rtc = devm_rtc_device_register(&spi->dev, m41t94_driver.driver.name,
     &m41t94_rtc_ops, THIS_MODULE);
 if (IS_ERR(rtc))
  return PTR_ERR(rtc);

 spi_set_drvdata(spi, rtc);

 return 0;
}
