
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s8 ;
 int WARN_ONCE (int,char*) ;

__attribute__((used)) static s8 _rtl8821ae_phy_get_ratesection_intxpower_byrate(u8 path, u8 rate)
{
 s8 rate_section = 0;
 switch (rate) {
 case 172:
 case 170:
 case 166:
 case 175:
  rate_section = 0;
  break;
 case 165:
 case 164:
 case 174:
 case 173:
  rate_section = 1;
  break;
 case 171:
 case 169:
 case 168:
 case 167:
  rate_section = 2;
  break;
 case 163:
 case 162:
 case 155:
 case 154:
  rate_section = 3;
  break;
 case 153:
 case 152:
 case 151:
 case 150:
  rate_section = 4;
  break;
 case 149:
 case 148:
 case 161:
 case 160:
  rate_section = 5;
  break;
 case 159:
 case 158:
 case 157:
 case 156:
  rate_section = 6;
  break;
 case 147:
 case 146:
 case 145:
 case 144:
  rate_section = 7;
  break;
 case 143:
 case 142:
 case 141:
 case 140:
  rate_section = 8;
  break;
 case 139:
 case 138:
 case 137:
 case 136:
  rate_section = 9;
  break;
 case 135:
 case 134:
 case 133:
 case 132:
  rate_section = 10;
  break;
 case 131:
 case 130:
 case 129:
 case 128:
  rate_section = 11;
  break;
 default:
  WARN_ONCE(1, "rtl8821ae: Rate_Section is Illegal\n");
  break;
 }

 return rate_section;
}
