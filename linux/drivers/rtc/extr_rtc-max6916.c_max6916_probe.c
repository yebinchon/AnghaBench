
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int bits_per_word; int dev; int mode; } ;
struct rtc_device {int dummy; } ;


 scalar_t__ IS_ERR (struct rtc_device*) ;
 int MAX6916_CONTROL_REG ;
 int MAX6916_SECONDS_REG ;
 int MAX6916_STATUS_REG ;
 int PTR_ERR (struct rtc_device*) ;
 int SPI_MODE_3 ;
 int THIS_MODULE ;
 int dev_info (int *,char*,unsigned char) ;
 struct rtc_device* devm_rtc_device_register (int *,char*,int *,int ) ;
 int max6916_read_reg (int *,int ,unsigned char*) ;
 int max6916_rtc_ops ;
 int max6916_write_reg (int *,int ,unsigned char) ;
 int spi_set_drvdata (struct spi_device*,struct rtc_device*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int max6916_probe(struct spi_device *spi)
{
 struct rtc_device *rtc;
 unsigned char data;
 int res;


 spi->mode = SPI_MODE_3;
 spi->bits_per_word = 8;
 spi_setup(spi);


 res = max6916_read_reg(&spi->dev, MAX6916_SECONDS_REG, &data);
 if (res)
  return res;


 max6916_read_reg(&spi->dev, MAX6916_CONTROL_REG, &data);
 data = data & ~(1 << 7);
 max6916_write_reg(&spi->dev, MAX6916_CONTROL_REG, data);


 max6916_read_reg(&spi->dev, MAX6916_STATUS_REG, &data);
 data = data & 0x1B;
 max6916_write_reg(&spi->dev, MAX6916_STATUS_REG, data);


 max6916_read_reg(&spi->dev, MAX6916_CONTROL_REG, &data);
 dev_info(&spi->dev, "MAX6916 RTC CTRL Reg = 0x%02x\n", data);

 max6916_read_reg(&spi->dev, MAX6916_STATUS_REG, &data);
 dev_info(&spi->dev, "MAX6916 RTC Status Reg = 0x%02x\n", data);

 rtc = devm_rtc_device_register(&spi->dev, "max6916",
           &max6916_rtc_ops, THIS_MODULE);
 if (IS_ERR(rtc))
  return PTR_ERR(rtc);

 spi_set_drvdata(spi, rtc);

 return 0;
}
