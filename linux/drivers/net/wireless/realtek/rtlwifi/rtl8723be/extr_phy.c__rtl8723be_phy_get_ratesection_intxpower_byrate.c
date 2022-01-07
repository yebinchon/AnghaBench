
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;
 int RF90_PATH_A ;
 int RF90_PATH_B ;
 int WARN_ONCE (int,char*) ;

__attribute__((used)) static u8 _rtl8723be_phy_get_ratesection_intxpower_byrate(enum radio_path path,
         u8 rate)
{
 u8 rate_section = 0;

 switch (rate) {
 case 152:
  rate_section = 2;
  break;

 case 150:
 case 146:
  if (path == RF90_PATH_A)
   rate_section = 3;
  else if (path == RF90_PATH_B)
   rate_section = 2;
  break;

 case 155:
  rate_section = 3;
  break;

 case 145:
 case 144:
 case 154:
 case 153:
  rate_section = 0;
  break;

 case 151:
 case 149:
 case 148:
 case 147:
  rate_section = 1;
  break;

 case 143:
 case 142:
 case 135:
 case 134:
  rate_section = 4;
  break;

 case 133:
 case 132:
 case 131:
 case 130:
  rate_section = 5;
  break;

 case 129:
 case 128:
 case 141:
 case 140:
  rate_section = 6;
  break;

 case 139:
 case 138:
 case 137:
 case 136:
  rate_section = 7;
  break;

 default:
  WARN_ONCE(1, "rtl8723be: Rate_Section is Illegal\n");
  break;
 }

 return rate_section;
}
