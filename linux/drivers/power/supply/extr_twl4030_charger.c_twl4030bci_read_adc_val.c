
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int twl4030_bci_read (int,int*) ;

__attribute__((used)) static int twl4030bci_read_adc_val(u8 reg)
{
 int ret, temp;
 u8 val;


 ret = twl4030_bci_read(reg + 1, &val);
 if (ret)
  return ret;

 temp = (int)(val & 0x03) << 8;


 ret = twl4030_bci_read(reg, &val);
 if (ret)
  return ret;

 return temp | val;
}
