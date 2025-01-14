
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct armada_thermal_data {unsigned int coef_b; unsigned int coef_m; unsigned int coef_div; unsigned int temp_mask; scalar_t__ inverted; } ;
typedef unsigned int s64 ;


 unsigned int div_s64 (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int armada_mc_to_reg_temp(struct armada_thermal_data *data,
       unsigned int temp_mc)
{
 s64 b = data->coef_b;
 s64 m = data->coef_m;
 s64 div = data->coef_div;
 unsigned int sample;

 if (data->inverted)
  sample = div_s64(((temp_mc * div) + b), m);
 else
  sample = div_s64((b - (temp_mc * div)), m);

 return sample & data->temp_mask;
}
