
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int INTEL_MSIC_ADC1CNTL1 ;
 int MSIC_ADC_ENBL ;
 int MSIC_ADC_START ;
 int intel_msic_reg_read (int ,int*) ;
 int intel_msic_reg_write (int ,int) ;

__attribute__((used)) static int configure_adc(int val)
{
 int ret;
 uint8_t data;

 ret = intel_msic_reg_read(INTEL_MSIC_ADC1CNTL1, &data);
 if (ret)
  return ret;

 if (val) {

  data |= (MSIC_ADC_ENBL | MSIC_ADC_START);
 } else {

  data &= (~MSIC_ADC_START);
 }
 return intel_msic_reg_write(INTEL_MSIC_ADC1CNTL1, data);
}
