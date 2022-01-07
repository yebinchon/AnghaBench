
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static u32 _rtl92d_phy_get_abs(u32 val1, u32 val2)
{
 u32 ret;

 if (val1 >= val2)
  ret = val1 - val2;
 else
  ret = val2 - val1;
 return ret;
}
