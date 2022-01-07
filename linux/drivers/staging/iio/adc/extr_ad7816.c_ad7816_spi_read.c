
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct spi_device {int dev; } ;
struct ad7816_chip_info {scalar_t__ mode; scalar_t__ id; int rdwr_pin; int busy_pin; int convert_pin; int channel_id; struct spi_device* spi_dev; } ;
typedef int __be16 ;


 scalar_t__ AD7816_PD ;
 scalar_t__ ID_AD7816 ;
 scalar_t__ ID_AD7817 ;
 int be16_to_cpu (int ) ;
 int cpu_relax () ;
 int dev_err (int *,char*) ;
 scalar_t__ gpiod_get_value (int ) ;
 int gpiod_set_value (int ,int) ;
 int spi_read (struct spi_device*,int *,int) ;
 int spi_write (struct spi_device*,int *,int) ;

__attribute__((used)) static int ad7816_spi_read(struct ad7816_chip_info *chip, u16 *data)
{
 struct spi_device *spi_dev = chip->spi_dev;
 int ret;
 __be16 buf;

 gpiod_set_value(chip->rdwr_pin, 1);
 gpiod_set_value(chip->rdwr_pin, 0);
 ret = spi_write(spi_dev, &chip->channel_id, sizeof(chip->channel_id));
 if (ret < 0) {
  dev_err(&spi_dev->dev, "SPI channel setting error\n");
  return ret;
 }
 gpiod_set_value(chip->rdwr_pin, 1);

 if (chip->mode == AD7816_PD) {
  gpiod_set_value(chip->convert_pin, 1);
  gpiod_set_value(chip->convert_pin, 0);
 } else {
  gpiod_set_value(chip->convert_pin, 0);
  gpiod_set_value(chip->convert_pin, 1);
 }

 if (chip->id == ID_AD7816 || chip->id == ID_AD7817) {
  while (gpiod_get_value(chip->busy_pin))
   cpu_relax();
 }

 gpiod_set_value(chip->rdwr_pin, 0);
 gpiod_set_value(chip->rdwr_pin, 1);
 ret = spi_read(spi_dev, &buf, sizeof(*data));
 if (ret < 0) {
  dev_err(&spi_dev->dev, "SPI data read error\n");
  return ret;
 }

 *data = be16_to_cpu(buf);

 return ret;
}
