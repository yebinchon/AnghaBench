
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int bits_per_word; int dev; int mode; } ;
struct rtc_device {int dummy; } ;
struct regmap_config {int reg_bits; int val_bits; int read_flag_mask; int max_register; int * wr_table; } ;
typedef struct rtc_device regmap ;
typedef int config ;


 int DS1347_CONTROL_REG ;
 int DS1347_SECONDS_REG ;
 int DS1347_STATUS_REG ;
 scalar_t__ IS_ERR (struct rtc_device*) ;
 int PTR_ERR (struct rtc_device*) ;
 int SPI_MODE_3 ;
 int THIS_MODULE ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,unsigned int) ;
 struct rtc_device* devm_regmap_init_spi (struct spi_device*,struct regmap_config*) ;
 struct rtc_device* devm_rtc_device_register (int *,char*,int *,int ) ;
 int ds1347_access_table ;
 int ds1347_rtc_ops ;
 int memset (struct regmap_config*,int ,int) ;
 int regmap_read (struct rtc_device*,int ,unsigned int*) ;
 int regmap_write (struct rtc_device*,int ,unsigned int) ;
 int spi_set_drvdata (struct spi_device*,struct rtc_device*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int ds1347_probe(struct spi_device *spi)
{
 struct rtc_device *rtc;
 struct regmap_config config;
 struct regmap *map;
 unsigned int data;
 int res;

 memset(&config, 0, sizeof(config));
 config.reg_bits = 8;
 config.val_bits = 8;
 config.read_flag_mask = 0x80;
 config.max_register = 0x3F;
 config.wr_table = &ds1347_access_table;


 spi->mode = SPI_MODE_3;
 spi->bits_per_word = 8;
 spi_setup(spi);

 map = devm_regmap_init_spi(spi, &config);

 if (IS_ERR(map)) {
  dev_err(&spi->dev, "ds1347 regmap init spi failed\n");
  return PTR_ERR(map);
 }

 spi_set_drvdata(spi, map);


 res = regmap_read(map, DS1347_SECONDS_REG, &data);
 if (res)
  return res;


 regmap_read(map, DS1347_CONTROL_REG, &data);
 data = data & ~(1<<7);
 regmap_write(map, DS1347_CONTROL_REG, data);



 regmap_read(map, DS1347_STATUS_REG, &data);
 data = data & 0x1B;
 regmap_write(map, DS1347_STATUS_REG, data);


 regmap_read(map, DS1347_CONTROL_REG, &data);
 dev_info(&spi->dev, "DS1347 RTC CTRL Reg = 0x%02x\n", data);

 regmap_read(map, DS1347_STATUS_REG, &data);
 dev_info(&spi->dev, "DS1347 RTC Status Reg = 0x%02x\n", data);

 rtc = devm_rtc_device_register(&spi->dev, "ds1347",
    &ds1347_rtc_ops, THIS_MODULE);

 if (IS_ERR(rtc))
  return PTR_ERR(rtc);

 return 0;
}
