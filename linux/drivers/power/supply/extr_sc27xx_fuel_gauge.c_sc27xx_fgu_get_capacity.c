
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {int init_clbcnt; int total_cap; int init_cap; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int SC27XX_FGU_SAMPLE_HZ ;
 int sc27xx_fgu_adc_to_current (struct sc27xx_fgu_data*,int) ;
 int sc27xx_fgu_capacity_calibration (struct sc27xx_fgu_data*,int,int) ;
 int sc27xx_fgu_get_clbcnt (struct sc27xx_fgu_data*,int*) ;

__attribute__((used)) static int sc27xx_fgu_get_capacity(struct sc27xx_fgu_data *data, int *cap)
{
 int ret, cur_clbcnt, delta_clbcnt, delta_cap, temp;


 ret = sc27xx_fgu_get_clbcnt(data, &cur_clbcnt);
 if (ret)
  return ret;

 delta_clbcnt = cur_clbcnt - data->init_clbcnt;





 temp = DIV_ROUND_CLOSEST(delta_clbcnt * 10, 36 * SC27XX_FGU_SAMPLE_HZ);
 temp = sc27xx_fgu_adc_to_current(data, temp / 1000);





 delta_cap = DIV_ROUND_CLOSEST(temp * 100, data->total_cap);
 *cap = delta_cap + data->init_cap;


 sc27xx_fgu_capacity_calibration(data, *cap, 0);

 return 0;
}
