
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ili922x {int power; int spi; } ;


 scalar_t__ POWER_IS_ON (int) ;
 int ili922x_poweroff (int ) ;
 int ili922x_poweron (int ) ;

__attribute__((used)) static int ili922x_lcd_power(struct ili922x *lcd, int power)
{
 int ret = 0;

 if (POWER_IS_ON(power) && !POWER_IS_ON(lcd->power))
  ret = ili922x_poweron(lcd->spi);
 else if (!POWER_IS_ON(power) && POWER_IS_ON(lcd->power))
  ret = ili922x_poweroff(lcd->spi);

 if (!ret)
  lcd->power = power;

 return ret;
}
