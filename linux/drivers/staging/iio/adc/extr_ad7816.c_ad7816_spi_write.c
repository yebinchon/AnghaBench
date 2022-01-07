
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;
struct ad7816_chip_info {int rdwr_pin; struct spi_device* spi_dev; } ;
typedef int data ;


 int dev_err (int *,char*) ;
 int gpiod_set_value (int ,int) ;
 int spi_write (struct spi_device*,int *,int) ;

__attribute__((used)) static int ad7816_spi_write(struct ad7816_chip_info *chip, u8 data)
{
 struct spi_device *spi_dev = chip->spi_dev;
 int ret;

 gpiod_set_value(chip->rdwr_pin, 1);
 gpiod_set_value(chip->rdwr_pin, 0);
 ret = spi_write(spi_dev, &data, sizeof(data));
 if (ret < 0)
  dev_err(&spi_dev->dev, "SPI oti data write error\n");

 return ret;
}
