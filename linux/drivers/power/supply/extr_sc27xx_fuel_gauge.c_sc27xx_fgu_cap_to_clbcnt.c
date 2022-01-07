
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {int total_cap; int cur_1000ma_adc; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int SC27XX_FGU_SAMPLE_HZ ;

__attribute__((used)) static int sc27xx_fgu_cap_to_clbcnt(struct sc27xx_fgu_data *data, int capacity)
{




 int cur_cap = DIV_ROUND_CLOSEST(data->total_cap * capacity, 100);





 return DIV_ROUND_CLOSEST(cur_cap * 36 * data->cur_1000ma_adc * SC27XX_FGU_SAMPLE_HZ, 10);
}
