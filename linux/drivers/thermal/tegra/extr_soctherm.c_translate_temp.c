
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int READBACK_ADD_HALF ;
 int READBACK_NEGATE ;
 int READBACK_VALUE_MASK ;
 int READBACK_VALUE_SHIFT ;

__attribute__((used)) static int translate_temp(u16 val)
{
 int t;

 t = ((val & READBACK_VALUE_MASK) >> READBACK_VALUE_SHIFT) * 1000;
 if (val & READBACK_ADD_HALF)
  t += 500;
 if (val & READBACK_NEGATE)
  t *= -1;

 return t;
}
