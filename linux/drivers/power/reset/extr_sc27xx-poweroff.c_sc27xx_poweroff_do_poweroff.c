
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SC27XX_PWR_OFF_EN ;
 int SC27XX_PWR_PD_HW ;
 int regmap ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void sc27xx_poweroff_do_poweroff(void)
{
 regmap_write(regmap, SC27XX_PWR_PD_HW, SC27XX_PWR_OFF_EN);
}
