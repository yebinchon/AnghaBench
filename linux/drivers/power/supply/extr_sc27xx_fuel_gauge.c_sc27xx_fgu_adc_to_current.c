
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {int cur_1000ma_adc; } ;


 int DIV_ROUND_CLOSEST (int,int ) ;

__attribute__((used)) static int sc27xx_fgu_adc_to_current(struct sc27xx_fgu_data *data, int adc)
{
 return DIV_ROUND_CLOSEST(adc * 1000, data->cur_1000ma_adc);
}
