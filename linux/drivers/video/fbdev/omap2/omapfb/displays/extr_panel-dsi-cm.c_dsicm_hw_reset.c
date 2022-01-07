
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int reset_gpio; } ;


 int gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void dsicm_hw_reset(struct panel_drv_data *ddata)
{
 if (!gpio_is_valid(ddata->reset_gpio))
  return;

 gpio_set_value(ddata->reset_gpio, 1);
 udelay(10);

 gpio_set_value(ddata->reset_gpio, 0);

 udelay(10);
 gpio_set_value(ddata->reset_gpio, 1);

 usleep_range(5000, 10000);
}
