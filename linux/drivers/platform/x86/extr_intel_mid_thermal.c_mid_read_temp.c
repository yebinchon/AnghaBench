
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct thermal_zone_device {struct thermal_device_info* devdata; } ;
struct thermal_device_info {int chnl_addr; int curr_temp; int direct; } ;


 int INTEL_MSIC_ADC1CNTL3 ;
 int MSIC_ADCRRDATA_ENBL ;
 int MSIC_ADCTHERM_ENBL ;
 int adc_to_temp (int ,int,int*) ;
 int intel_msic_reg_read (int,int*) ;
 int intel_msic_reg_write (int ,int ) ;

__attribute__((used)) static int mid_read_temp(struct thermal_zone_device *tzd, int *temp)
{
 struct thermal_device_info *td_info = tzd->devdata;
 uint16_t adc_val, addr;
 uint8_t data = 0;
 int ret;
 int curr_temp;

 addr = td_info->chnl_addr;


 ret = intel_msic_reg_write(INTEL_MSIC_ADC1CNTL3, MSIC_ADCRRDATA_ENBL);
 if (ret)
  return ret;


 ret = intel_msic_reg_write(INTEL_MSIC_ADC1CNTL3, MSIC_ADCTHERM_ENBL);
 if (ret)
  return ret;


 ret = intel_msic_reg_read(addr, &data);
 if (ret)
  return ret;


 adc_val = (data << 2);
 addr++;

 ret = intel_msic_reg_read(addr, &data);
 if (ret)
  return ret;


 data &= 03;
 adc_val += data;


 ret = adc_to_temp(td_info->direct, adc_val, &curr_temp);
 if (ret == 0)
  *temp = td_info->curr_temp = curr_temp;
 return ret;
}
