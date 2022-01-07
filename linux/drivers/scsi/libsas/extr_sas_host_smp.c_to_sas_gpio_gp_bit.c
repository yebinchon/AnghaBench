
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 *to_sas_gpio_gp_bit(unsigned int od, u8 *data, u8 index, u8 count, u8 *bit)
{
 unsigned int reg;
 u8 byte;


 if (index == 0)
  return ((void*)0);

 index--;
 if (od < index * 32)
  return ((void*)0);

 od -= index * 32;
 reg = od >> 5;

 if (reg >= count)
  return ((void*)0);

 od &= (1 << 5) - 1;
 byte = 3 - (od >> 3);
 *bit = od & ((1 << 3) - 1);

 return &data[reg * 4 + byte];
}
