
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct lms283gf05_state {struct lcd_device* ld; struct spi_device* spi; } ;
struct lms283gf05_pdata {int reset_inverted; int reset_gpio; } ;
struct lcd_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOF_DIR_OUT ;
 int GPIOF_INIT_HIGH ;
 int GPIOF_INIT_LOW ;
 scalar_t__ IS_ERR (struct lcd_device*) ;
 int PTR_ERR (struct lcd_device*) ;
 struct lms283gf05_pdata* dev_get_platdata (int *) ;
 int devm_gpio_request_one (int *,int ,int,char*) ;
 struct lms283gf05_state* devm_kzalloc (int *,int,int ) ;
 struct lcd_device* devm_lcd_device_register (int *,char*,int *,struct lms283gf05_state*,int *) ;
 int disp_initseq ;
 int lms283gf05_reset (int ,int ) ;
 int lms283gf05_toggle (struct spi_device*,int ,int ) ;
 int lms_ops ;
 int spi_set_drvdata (struct spi_device*,struct lms283gf05_state*) ;

__attribute__((used)) static int lms283gf05_probe(struct spi_device *spi)
{
 struct lms283gf05_state *st;
 struct lms283gf05_pdata *pdata = dev_get_platdata(&spi->dev);
 struct lcd_device *ld;
 int ret = 0;

 if (pdata != ((void*)0)) {
  ret = devm_gpio_request_one(&spi->dev, pdata->reset_gpio,
    GPIOF_DIR_OUT | (!pdata->reset_inverted ?
    GPIOF_INIT_HIGH : GPIOF_INIT_LOW),
    "LMS283GF05 RESET");
  if (ret)
   return ret;
 }

 st = devm_kzalloc(&spi->dev, sizeof(struct lms283gf05_state),
    GFP_KERNEL);
 if (st == ((void*)0))
  return -ENOMEM;

 ld = devm_lcd_device_register(&spi->dev, "lms283gf05", &spi->dev, st,
     &lms_ops);
 if (IS_ERR(ld))
  return PTR_ERR(ld);

 st->spi = spi;
 st->ld = ld;

 spi_set_drvdata(spi, st);


 if (pdata)
  lms283gf05_reset(pdata->reset_gpio, pdata->reset_inverted);
 lms283gf05_toggle(spi, disp_initseq, ARRAY_SIZE(disp_initseq));

 return 0;
}
