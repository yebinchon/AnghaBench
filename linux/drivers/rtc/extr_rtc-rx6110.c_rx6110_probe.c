
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct spi_device {int bits_per_word; int max_speed_hz; int mode; int dev; } ;
struct rx6110_data {TYPE_1__* rtc; TYPE_1__* regmap; } ;
struct TYPE_5__ {int max_user_freq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int RX6110_DRIVER_NAME ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int THIS_MODULE ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,...) ;
 struct rx6110_data* devm_kzalloc (int *,int,int ) ;
 TYPE_1__* devm_regmap_init_spi (struct spi_device*,int *) ;
 TYPE_1__* devm_rtc_device_register (int *,int ,int *,int ) ;
 int regmap_spi_config ;
 int rx6110_init (struct rx6110_data*) ;
 int rx6110_rtc_ops ;
 int spi_set_drvdata (struct spi_device*,struct rx6110_data*) ;

__attribute__((used)) static int rx6110_probe(struct spi_device *spi)
{
 struct rx6110_data *rx6110;
 int err;

 if ((spi->bits_per_word && spi->bits_per_word != 8) ||
     (spi->max_speed_hz > 2000000) ||
     (spi->mode != (SPI_CS_HIGH | SPI_CPOL | SPI_CPHA))) {
  dev_warn(&spi->dev, "SPI settings: bits_per_word: %d, max_speed_hz: %d, mode: %xh\n",
    spi->bits_per_word, spi->max_speed_hz, spi->mode);
  dev_warn(&spi->dev, "driving device in an unsupported mode");
 }

 rx6110 = devm_kzalloc(&spi->dev, sizeof(*rx6110), GFP_KERNEL);
 if (!rx6110)
  return -ENOMEM;

 rx6110->regmap = devm_regmap_init_spi(spi, &regmap_spi_config);
 if (IS_ERR(rx6110->regmap)) {
  dev_err(&spi->dev, "regmap init failed for rtc rx6110\n");
  return PTR_ERR(rx6110->regmap);
 }

 spi_set_drvdata(spi, rx6110);

 rx6110->rtc = devm_rtc_device_register(&spi->dev,
            RX6110_DRIVER_NAME,
            &rx6110_rtc_ops, THIS_MODULE);

 if (IS_ERR(rx6110->rtc))
  return PTR_ERR(rx6110->rtc);

 err = rx6110_init(rx6110);
 if (err)
  return err;

 rx6110->rtc->max_user_freq = 1;

 return 0;
}
