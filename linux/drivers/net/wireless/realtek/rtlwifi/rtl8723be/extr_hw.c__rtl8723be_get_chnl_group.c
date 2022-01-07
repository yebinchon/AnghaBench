
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 _rtl8723be_get_chnl_group(u8 chnl)
{
 u8 group;

 if (chnl < 3)
  group = 0;
 else if (chnl < 9)
  group = 1;
 else
  group = 2;
 return group;
}
