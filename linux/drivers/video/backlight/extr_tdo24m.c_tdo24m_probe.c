
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdo24m_platform_data {int model; } ;
struct spi_transfer {int * tx_buf; scalar_t__ cs_change; } ;
struct spi_message {int dummy; } ;
struct tdo24m {int color_invert; int lcd_dev; int adj_mode; int * buf; struct spi_transfer xfer; struct spi_message msg; int mode; int power; struct spi_device* spi_dev; } ;
struct spi_device {int bits_per_word; int dev; int mode; } ;
typedef enum tdo24m_model { ____Placeholder_tdo24m_model } tdo24m_model ;


 int EINVAL ;
 int ENOMEM ;
 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MODE_VGA ;
 int PTR_ERR (int ) ;
 int SPI_MODE_3 ;

 int TDO24M_SPI_BUFF_SIZE ;

 int dev_err (int *,char*) ;
 struct tdo24m_platform_data* dev_get_platdata (int *) ;
 void* devm_kzalloc (int *,int,int ) ;
 int devm_lcd_device_register (int *,char*,int *,struct tdo24m*,int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_set_drvdata (struct spi_device*,struct tdo24m*) ;
 int spi_setup (struct spi_device*) ;
 int tdo24m_adj_mode ;
 int tdo24m_ops ;
 int tdo24m_power (struct tdo24m*,int ) ;
 int tdo35s_adj_mode ;

__attribute__((used)) static int tdo24m_probe(struct spi_device *spi)
{
 struct tdo24m *lcd;
 struct spi_message *m;
 struct spi_transfer *x;
 struct tdo24m_platform_data *pdata;
 enum tdo24m_model model;
 int err;

 pdata = dev_get_platdata(&spi->dev);
 if (pdata)
  model = pdata->model;
 else
  model = 129;

 spi->bits_per_word = 8;
 spi->mode = SPI_MODE_3;
 err = spi_setup(spi);
 if (err)
  return err;

 lcd = devm_kzalloc(&spi->dev, sizeof(struct tdo24m), GFP_KERNEL);
 if (!lcd)
  return -ENOMEM;

 lcd->spi_dev = spi;
 lcd->power = FB_BLANK_POWERDOWN;
 lcd->mode = MODE_VGA;

 lcd->buf = devm_kzalloc(&spi->dev, TDO24M_SPI_BUFF_SIZE, GFP_KERNEL);
 if (lcd->buf == ((void*)0))
  return -ENOMEM;

 m = &lcd->msg;
 x = &lcd->xfer;

 spi_message_init(m);

 x->cs_change = 0;
 x->tx_buf = &lcd->buf[0];
 spi_message_add_tail(x, m);

 switch (model) {
 case 129:
  lcd->color_invert = 1;
  lcd->adj_mode = tdo24m_adj_mode;
  break;
 case 128:
  lcd->adj_mode = tdo35s_adj_mode;
  lcd->color_invert = 0;
  break;
 default:
  dev_err(&spi->dev, "Unsupported model");
  return -EINVAL;
 }

 lcd->lcd_dev = devm_lcd_device_register(&spi->dev, "tdo24m", &spi->dev,
      lcd, &tdo24m_ops);
 if (IS_ERR(lcd->lcd_dev))
  return PTR_ERR(lcd->lcd_dev);

 spi_set_drvdata(spi, lcd);
 err = tdo24m_power(lcd, FB_BLANK_UNBLANK);
 if (err)
  return err;

 return 0;
}
