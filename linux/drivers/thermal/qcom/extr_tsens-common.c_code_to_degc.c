
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsens_sensor {int offset; int slope; } ;


 int SLOPE_FACTOR ;

__attribute__((used)) static inline int code_to_degc(u32 adc_code, const struct tsens_sensor *s)
{
 int degc, num, den;

 num = (adc_code * SLOPE_FACTOR) - s->offset;
 den = s->slope;

 if (num > 0)
  degc = num + (den / 2);
 else if (num < 0)
  degc = num - (den / 2);
 else
  degc = num;

 degc /= den;

 return degc;
}
