
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int intel_msic_reg_read (int ,int*) ;
 int intel_msic_reg_write (int ,int) ;

__attribute__((used)) static int reset_stopbit(uint16_t addr)
{
 int ret;
 uint8_t data;
 ret = intel_msic_reg_read(addr, &data);
 if (ret)
  return ret;

 return intel_msic_reg_write(addr, (data & 0xEF));
}
