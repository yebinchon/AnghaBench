
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int powered_on; int gamma; int spi; int vmirror; int hmirror; int mode; int nreset_gpio; int vcc_reg; } ;


 int TPO_R02_MODE (int ) ;
 int TPO_R02_NCLK_RISING ;
 int TPO_R03_VAL_NORMAL ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int msleep (int) ;
 int regulator_enable (int ) ;
 int tpo_td043_write (int ,int,int) ;
 int tpo_td043_write_gamma (int ,int ) ;
 int tpo_td043_write_mirror (int ,int ,int ) ;

__attribute__((used)) static int tpo_td043_power_on(struct panel_drv_data *ddata)
{
 int r;

 if (ddata->powered_on)
  return 0;

 r = regulator_enable(ddata->vcc_reg);
 if (r != 0)
  return r;


 msleep(160);

 if (gpio_is_valid(ddata->nreset_gpio))
  gpio_set_value(ddata->nreset_gpio, 1);

 tpo_td043_write(ddata->spi, 2,
   TPO_R02_MODE(ddata->mode) | TPO_R02_NCLK_RISING);
 tpo_td043_write(ddata->spi, 3, TPO_R03_VAL_NORMAL);
 tpo_td043_write(ddata->spi, 0x20, 0xf0);
 tpo_td043_write(ddata->spi, 0x21, 0xf0);
 tpo_td043_write_mirror(ddata->spi, ddata->hmirror,
   ddata->vmirror);
 tpo_td043_write_gamma(ddata->spi, ddata->gamma);

 ddata->powered_on = 1;
 return 0;
}
