
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s8 ;


 int BIT (int) ;
 int field_valid (int) ;

__attribute__((used)) static s8
get_delta(u8 val)
{
 s8 ret;

 if (!field_valid(val) || !(val & BIT(7)))
  return 0;

 ret = val & 0x1f;
 if (ret > 8)
  ret = 8;
 if (val & BIT(6))
  ret = -ret;

 return ret;
}
