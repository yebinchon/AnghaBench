
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {scalar_t__ powered_on; int vcc_reg; int spi; int nreset_gpio; } ;


 int TPO_R03_EN_PWM ;
 int TPO_R03_VAL_STANDBY ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int ) ;
 int msleep (int) ;
 int regulator_disable (int ) ;
 int tpo_td043_write (int ,int,int) ;

__attribute__((used)) static void tpo_td043_power_off(struct panel_drv_data *ddata)
{
 if (!ddata->powered_on)
  return;

 tpo_td043_write(ddata->spi, 3,
   TPO_R03_VAL_STANDBY | TPO_R03_EN_PWM);

 if (gpio_is_valid(ddata->nreset_gpio))
  gpio_set_value(ddata->nreset_gpio, 0);


 msleep(50);

 tpo_td043_write(ddata->spi, 3, TPO_R03_VAL_STANDBY);

 regulator_disable(ddata->vcc_reg);

 ddata->powered_on = 0;
}
