
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 int MSIC_DIE_SENSOR_CODE ;
 int SKIN_SENSOR0_CODE ;
 int SKIN_SENSOR1_CODE ;
 int SYS_SENSOR_CODE ;
 int configure_adc (int) ;
 int intel_msic_reg_write (scalar_t__,int) ;

__attribute__((used)) static int set_up_therm_channel(u16 base_addr)
{
 int ret;


 ret = intel_msic_reg_write(base_addr, SKIN_SENSOR0_CODE);
 if (ret)
  return ret;

 ret = intel_msic_reg_write(base_addr + 1, SKIN_SENSOR1_CODE);
 if (ret)
  return ret;

 ret = intel_msic_reg_write(base_addr + 2, SYS_SENSOR_CODE);
 if (ret)
  return ret;



 ret = intel_msic_reg_write(base_addr + 3,
   (MSIC_DIE_SENSOR_CODE | 0x10));
 if (ret)
  return ret;


 return configure_adc(1);
}
