
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int ADC_MAX ;
 int ADC_MIN ;
 int ADC_VAL0C ;
 int ADC_VAL20C ;
 int ADC_VAL40C ;
 int ADC_VAL60C ;
 int ERANGE ;
 int MSIC_DIE_ADC_MAX ;
 int MSIC_DIE_ADC_MIN ;
 scalar_t__ is_valid_adc (int,int ,int ) ;
 int to_msic_die_temp (int) ;

__attribute__((used)) static int adc_to_temp(int direct, uint16_t adc_val, int *tp)
{
 int temp;


 if (direct) {
  if (is_valid_adc(adc_val, MSIC_DIE_ADC_MIN, MSIC_DIE_ADC_MAX)) {
   *tp = to_msic_die_temp(adc_val) * 1000;
   return 0;
  }
  return -ERANGE;
 }

 if (!is_valid_adc(adc_val, ADC_MIN, ADC_MAX))
  return -ERANGE;


 if (adc_val > ADC_VAL0C)
  temp = 177 - (adc_val/5);
 else if ((adc_val <= ADC_VAL0C) && (adc_val > ADC_VAL20C))
  temp = 111 - (adc_val/8);
 else if ((adc_val <= ADC_VAL20C) && (adc_val > ADC_VAL40C))
  temp = 92 - (adc_val/10);
 else if ((adc_val <= ADC_VAL40C) && (adc_val > ADC_VAL60C))
  temp = 91 - (adc_val/10);
 else
  temp = 112 - (adc_val/6);


 *tp = temp * 1000;
 return 0;
}
