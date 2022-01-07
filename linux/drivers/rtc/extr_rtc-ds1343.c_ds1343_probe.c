
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct spi_device {int mode; int bits_per_word; int irq; int dev; } ;
struct regmap_config {int reg_bits; int val_bits; int write_flag_mask; } ;
struct nvmem_config {char* name; int word_size; int stride; struct ds1343_priv* priv; int reg_write; int reg_read; int size; } ;
struct ds1343_priv {int irq; TYPE_1__* rtc; TYPE_1__* map; int mutex; struct spi_device* spi; } ;
struct TYPE_9__ {int nvram_old_abi; int * ops; } ;


 unsigned int DS1343_A0IE ;
 unsigned int DS1343_A1IE ;
 int DS1343_CONTROL_REG ;
 unsigned int DS1343_EOSC ;
 unsigned int DS1343_INTCN ;
 unsigned int DS1343_IRQF0 ;
 unsigned int DS1343_IRQF1 ;
 int DS1343_NVRAM_LEN ;
 unsigned int DS1343_OSF ;
 int DS1343_SECONDS_REG ;
 int DS1343_STATUS_REG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int SPI_CS_HIGH ;
 int SPI_MODE_3 ;
 int dev_err (int *,char*) ;
 int dev_pm_set_wake_irq (int *,int) ;
 int device_init_wakeup (int *,int) ;
 struct ds1343_priv* devm_kzalloc (int *,int,int ) ;
 TYPE_1__* devm_regmap_init_spi (struct spi_device*,struct regmap_config*) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int ,char*,struct ds1343_priv*) ;
 TYPE_1__* devm_rtc_allocate_device (int *) ;
 int ds1343_nvram_read ;
 int ds1343_nvram_write ;
 int ds1343_rtc_ops ;
 int ds1343_sysfs_register (int *) ;
 int ds1343_thread ;
 int mutex_init (int *) ;
 int regmap_read (TYPE_1__*,int ,unsigned int*) ;
 int regmap_write (TYPE_1__*,int ,unsigned int) ;
 int rtc_nvmem_register (TYPE_1__*,struct nvmem_config*) ;
 int rtc_register_device (TYPE_1__*) ;
 int spi_set_drvdata (struct spi_device*,struct ds1343_priv*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int ds1343_probe(struct spi_device *spi)
{
 struct ds1343_priv *priv;
 struct regmap_config config = { .reg_bits = 8, .val_bits = 8,
     .write_flag_mask = 0x80, };
 unsigned int data;
 int res;
 struct nvmem_config nvmem_cfg = {
  .name = "ds1343-",
  .word_size = 1,
  .stride = 1,
  .size = DS1343_NVRAM_LEN,
  .reg_read = ds1343_nvram_read,
  .reg_write = ds1343_nvram_write,
 };

 priv = devm_kzalloc(&spi->dev, sizeof(struct ds1343_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->spi = spi;
 mutex_init(&priv->mutex);




 spi->mode = SPI_MODE_3 | SPI_CS_HIGH;
 spi->bits_per_word = 8;
 res = spi_setup(spi);
 if (res)
  return res;

 spi_set_drvdata(spi, priv);

 priv->map = devm_regmap_init_spi(spi, &config);

 if (IS_ERR(priv->map)) {
  dev_err(&spi->dev, "spi regmap init failed for rtc ds1343\n");
  return PTR_ERR(priv->map);
 }

 res = regmap_read(priv->map, DS1343_SECONDS_REG, &data);
 if (res)
  return res;

 regmap_read(priv->map, DS1343_CONTROL_REG, &data);
 data |= DS1343_INTCN;
 data &= ~(DS1343_EOSC | DS1343_A1IE | DS1343_A0IE);
 regmap_write(priv->map, DS1343_CONTROL_REG, data);

 regmap_read(priv->map, DS1343_STATUS_REG, &data);
 data &= ~(DS1343_OSF | DS1343_IRQF1 | DS1343_IRQF0);
 regmap_write(priv->map, DS1343_STATUS_REG, data);

 priv->rtc = devm_rtc_allocate_device(&spi->dev);
 if (IS_ERR(priv->rtc))
  return PTR_ERR(priv->rtc);

 priv->rtc->nvram_old_abi = 1;
 priv->rtc->ops = &ds1343_rtc_ops;

 res = rtc_register_device(priv->rtc);
 if (res)
  return res;

 nvmem_cfg.priv = priv;
 rtc_nvmem_register(priv->rtc, &nvmem_cfg);

 priv->irq = spi->irq;

 if (priv->irq >= 0) {
  res = devm_request_threaded_irq(&spi->dev, spi->irq, ((void*)0),
      ds1343_thread, IRQF_ONESHOT,
      "ds1343", priv);
  if (res) {
   priv->irq = -1;
   dev_err(&spi->dev,
    "unable to request irq for rtc ds1343\n");
  } else {
   device_init_wakeup(&spi->dev, 1);
   dev_pm_set_wake_irq(&spi->dev, spi->irq);
  }
 }

 res = ds1343_sysfs_register(&spi->dev);
 if (res)
  dev_err(&spi->dev,
   "unable to create sysfs entries for rtc ds1343\n");

 return 0;
}
