
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ADC_CHANLS_MAX ;
 scalar_t__ ADC_CHNL_START_ADDR ;
 int ADC_LOOP_MAX ;
 int EINVAL ;
 scalar_t__ INTEL_MSIC_ADC1CNTL1 ;
 int MSIC_ADC_ENBL ;
 int MSIC_STOPBIT_MASK ;
 int intel_msic_reg_read (scalar_t__,int*) ;

__attribute__((used)) static int find_free_channel(void)
{
 int ret;
 int i;
 uint8_t data;


 ret = intel_msic_reg_read(INTEL_MSIC_ADC1CNTL1, &data);
 if (ret)
  return ret;

 if ((data & MSIC_ADC_ENBL) == 0)
  return 0;


 for (i = 0; i < ADC_CHANLS_MAX; i++) {
  ret = intel_msic_reg_read(ADC_CHNL_START_ADDR + i, &data);
  if (ret)
   return ret;

  if (data & MSIC_STOPBIT_MASK) {
   ret = i;
   break;
  }
 }
 return (ret > ADC_LOOP_MAX) ? (-EINVAL) : ret;
}
