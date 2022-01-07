
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wilc_sdio {int dummy; } ;
struct wilc {struct gpio_desc* rtc_clk; struct gpio_desc* gpio_irq; int * dev; struct wilc_sdio* bus_data; } ;
struct sdio_func {int dev; TYPE_1__* card; } ;
struct sdio_device_id {int dummy; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int CONFIG_WILC1000_HW_OOB_INTR ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIO_NUM ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR_OR_ZERO (struct gpio_desc*) ;
 int WILC_HIF_SDIO ;
 int clk_prepare_enable (struct gpio_desc*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 struct gpio_desc* devm_clk_get (int *,char*) ;
 struct gpio_desc* gpio_to_desc (int ) ;
 struct gpio_desc* gpiod_get (int *,char*,int ) ;
 int kfree (struct wilc_sdio*) ;
 struct wilc_sdio* kzalloc (int,int ) ;
 int sdio_set_drvdata (struct sdio_func*,struct wilc*) ;
 int wilc_cfg80211_init (struct wilc**,int *,int ,int *) ;
 int wilc_hif_sdio ;

__attribute__((used)) static int wilc_sdio_probe(struct sdio_func *func,
      const struct sdio_device_id *id)
{
 struct wilc *wilc;
 int ret;
 struct gpio_desc *gpio = ((void*)0);
 struct wilc_sdio *sdio_priv;

 sdio_priv = kzalloc(sizeof(*sdio_priv), GFP_KERNEL);
 if (!sdio_priv)
  return -ENOMEM;

 if (IS_ENABLED(CONFIG_WILC1000_HW_OOB_INTR)) {
  gpio = gpiod_get(&func->dev, "irq", GPIOD_IN);
  if (IS_ERR(gpio)) {

   gpio = gpio_to_desc(GPIO_NUM);
   if (!gpio)
    dev_err(&func->dev, "failed to get irq gpio\n");
  }
 }

 ret = wilc_cfg80211_init(&wilc, &func->dev, WILC_HIF_SDIO,
     &wilc_hif_sdio);
 if (ret) {
  kfree(sdio_priv);
  return ret;
 }
 sdio_set_drvdata(func, wilc);
 wilc->bus_data = sdio_priv;
 wilc->dev = &func->dev;
 wilc->gpio_irq = gpio;

 wilc->rtc_clk = devm_clk_get(&func->card->dev, "rtc_clk");
 if (PTR_ERR_OR_ZERO(wilc->rtc_clk) == -EPROBE_DEFER)
  return -EPROBE_DEFER;
 else if (!IS_ERR(wilc->rtc_clk))
  clk_prepare_enable(wilc->rtc_clk);

 dev_info(&func->dev, "Driver Initializing success\n");
 return 0;
}
