
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 _rtl88e_get_chnl_group(u8 chnl)
{
 u8 group = 0;

 if (chnl < 3)
  group = 0;
 else if (chnl < 6)
  group = 1;
 else if (chnl < 9)
  group = 2;
 else if (chnl < 12)
  group = 3;
 else if (chnl < 14)
  group = 4;
 else if (chnl == 14)
  group = 5;

 return group;
}
