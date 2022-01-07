
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ of_node; } ;
struct spi_device {int bits_per_word; TYPE_1__ dev; int mode; } ;
struct ds1390 {int rtc; } ;


 int DS1390_REG_SECONDS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_MODE_3 ;
 int THIS_MODULE ;
 int dev_err (TYPE_1__*,char*) ;
 struct ds1390* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_rtc_device_register (TYPE_1__*,char*,int *,int ) ;
 int ds1390_get_reg (TYPE_1__*,int ,unsigned char*) ;
 int ds1390_rtc_ops ;
 int ds1390_trickle_of_init (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct ds1390*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int ds1390_probe(struct spi_device *spi)
{
 unsigned char tmp;
 struct ds1390 *chip;
 int res;

 spi->mode = SPI_MODE_3;
 spi->bits_per_word = 8;
 spi_setup(spi);

 chip = devm_kzalloc(&spi->dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 spi_set_drvdata(spi, chip);

 res = ds1390_get_reg(&spi->dev, DS1390_REG_SECONDS, &tmp);
 if (res != 0) {
  dev_err(&spi->dev, "unable to read device\n");
  return res;
 }

 if (spi->dev.of_node)
  ds1390_trickle_of_init(spi);

 chip->rtc = devm_rtc_device_register(&spi->dev, "ds1390",
     &ds1390_rtc_ops, THIS_MODULE);
 if (IS_ERR(chip->rtc)) {
  dev_err(&spi->dev, "unable to register device\n");
  res = PTR_ERR(chip->rtc);
 }

 return res;
}
