
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct lms283gf05_state {struct spi_device* spi; } ;
struct lms283gf05_pdata {int reset_inverted; int reset_gpio; } ;
struct lcd_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int FB_BLANK_NORMAL ;
 struct lms283gf05_pdata* dev_get_platdata (int *) ;
 int disp_initseq ;
 int disp_pdwnseq ;
 int gpio_set_value (int ,int ) ;
 struct lms283gf05_state* lcd_get_data (struct lcd_device*) ;
 int lms283gf05_reset (int ,int ) ;
 int lms283gf05_toggle (struct spi_device*,int ,int ) ;

__attribute__((used)) static int lms283gf05_power_set(struct lcd_device *ld, int power)
{
 struct lms283gf05_state *st = lcd_get_data(ld);
 struct spi_device *spi = st->spi;
 struct lms283gf05_pdata *pdata = dev_get_platdata(&spi->dev);

 if (power <= FB_BLANK_NORMAL) {
  if (pdata)
   lms283gf05_reset(pdata->reset_gpio,
     pdata->reset_inverted);
  lms283gf05_toggle(spi, disp_initseq, ARRAY_SIZE(disp_initseq));
 } else {
  lms283gf05_toggle(spi, disp_pdwnseq, ARRAY_SIZE(disp_pdwnseq));
  if (pdata)
   gpio_set_value(pdata->reset_gpio,
     pdata->reset_inverted);
 }

 return 0;
}
