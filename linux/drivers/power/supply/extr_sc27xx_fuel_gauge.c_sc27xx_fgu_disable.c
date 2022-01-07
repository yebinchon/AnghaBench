
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {int regmap; } ;


 int SC27XX_CLK_EN0 ;
 int SC27XX_FGU_EN ;
 int SC27XX_FGU_RTC_EN ;
 int SC27XX_MODULE_EN0 ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void sc27xx_fgu_disable(void *_data)
{
 struct sc27xx_fgu_data *data = _data;

 regmap_update_bits(data->regmap, SC27XX_CLK_EN0, SC27XX_FGU_RTC_EN, 0);
 regmap_update_bits(data->regmap, SC27XX_MODULE_EN0, SC27XX_FGU_EN, 0);
}
