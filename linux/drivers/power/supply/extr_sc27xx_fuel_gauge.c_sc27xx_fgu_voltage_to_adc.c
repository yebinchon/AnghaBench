
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {int vol_1000mv_adc; } ;


 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static int sc27xx_fgu_voltage_to_adc(struct sc27xx_fgu_data *data, int vol)
{
 return DIV_ROUND_CLOSEST(vol * data->vol_1000mv_adc, 1000);
}
