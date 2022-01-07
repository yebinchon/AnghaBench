
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_spi {int dummy; } ;
struct wilc {struct gpio_desc* gpio_irq; struct wilc_spi* bus_data; int * dev; } ;
struct spi_device {int dev; } ;
struct gpio_desc {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIO_NUM ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int WILC_HIF_SPI ;
 int dev_err (int *,char*) ;
 struct gpio_desc* gpio_to_desc (int ) ;
 struct gpio_desc* gpiod_get (int *,char*,int ) ;
 int kfree (struct wilc_spi*) ;
 struct wilc_spi* kzalloc (int,int ) ;
 int spi_set_drvdata (struct spi_device*,struct wilc*) ;
 int wilc_cfg80211_init (struct wilc**,int *,int ,int *) ;
 int wilc_hif_spi ;

__attribute__((used)) static int wilc_bus_probe(struct spi_device *spi)
{
 int ret;
 struct wilc *wilc;
 struct gpio_desc *gpio;
 struct wilc_spi *spi_priv;

 spi_priv = kzalloc(sizeof(*spi_priv), GFP_KERNEL);
 if (!spi_priv)
  return -ENOMEM;

 gpio = gpiod_get(&spi->dev, "irq", GPIOD_IN);
 if (IS_ERR(gpio)) {

  gpio = gpio_to_desc(GPIO_NUM);
  if (!gpio)
   dev_err(&spi->dev, "failed to get the irq gpio\n");
 }

 ret = wilc_cfg80211_init(&wilc, &spi->dev, WILC_HIF_SPI, &wilc_hif_spi);
 if (ret) {
  kfree(spi_priv);
  return ret;
 }

 spi_set_drvdata(spi, wilc);
 wilc->dev = &spi->dev;
 wilc->bus_data = spi_priv;
 wilc->gpio_irq = gpio;

 return 0;
}
