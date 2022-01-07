
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
__attribute__((used)) static u8 _rtl92ee_get_rate_section_index(u32 regaddr)
{
 u8 index = 0;

 switch (regaddr) {
 case 137:
 case 129:
  index = 0;
  break;
 case 136:
 case 128:
  index = 1;
  break;
 case 142:
 case 134:
  index = 2;
  break;
 case 135:
  index = 3;
  break;
 case 141:
 case 133:
  index = 4;
  break;
 case 140:
 case 132:
  index = 5;
  break;
 case 139:
 case 131:
  index = 6;
  break;
 case 138:
 case 130:
  index = 7;
  break;
 default:
  regaddr &= 0xFFF;
  if (regaddr >= 0xC20 && regaddr <= 0xC4C)
   index = (u8)((regaddr - 0xC20) / 4);
  else if (regaddr >= 0xE20 && regaddr <= 0xE4C)
   index = (u8)((regaddr - 0xE20) / 4);
  break;
 }
 return index;
}
