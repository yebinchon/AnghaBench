
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;

__attribute__((used)) static int bm1880_pinconf_drv_set(unsigned int mA, u32 width,
      u32 *regval, u32 bit_offset)
{
 u32 _regval;

 _regval = *regval;





 if (width == 0x03) {
  switch (mA) {
  case 4:
   _regval &= ~(width << bit_offset);
   _regval |= (0 << bit_offset);
   break;
  case 8:
   _regval &= ~(width << bit_offset);
   _regval |= (1 << bit_offset);
   break;
  case 12:
   _regval &= ~(width << bit_offset);
   _regval |= (2 << bit_offset);
   break;
  case 16:
   _regval &= ~(width << bit_offset);
   _regval |= (3 << bit_offset);
   break;
  case 20:
   _regval &= ~(width << bit_offset);
   _regval |= (4 << bit_offset);
   break;
  case 24:
   _regval &= ~(width << bit_offset);
   _regval |= (5 << bit_offset);
   break;
  case 28:
   _regval &= ~(width << bit_offset);
   _regval |= (6 << bit_offset);
   break;
  case 32:
   _regval &= ~(width << bit_offset);
   _regval |= (7 << bit_offset);
   break;
  default:
   return -EINVAL;
  }
 } else {
  switch (mA) {
  case 4:
   _regval &= ~(width << bit_offset);
   _regval |= (0 << bit_offset);
   break;
  case 8:
   _regval &= ~(width << bit_offset);
   _regval |= (1 << bit_offset);
   break;
  case 12:
   _regval &= ~(width << bit_offset);
   _regval |= (2 << bit_offset);
   break;
  case 16:
   _regval &= ~(width << bit_offset);
   _regval |= (3 << bit_offset);
   break;
  default:
   return -EINVAL;
  }
 }

 *regval = _regval;

 return 0;
}
