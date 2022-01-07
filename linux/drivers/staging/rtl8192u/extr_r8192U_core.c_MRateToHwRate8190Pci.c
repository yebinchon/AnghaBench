
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DESC90_RATE11M ;
 int DESC90_RATE12M ;
 int DESC90_RATE18M ;
 int DESC90_RATE1M ;
 int DESC90_RATE24M ;
 int DESC90_RATE2M ;
 int DESC90_RATE36M ;
 int DESC90_RATE48M ;
 int DESC90_RATE54M ;
 int DESC90_RATE5_5M ;
 int DESC90_RATE6M ;
 int DESC90_RATE9M ;
 int DESC90_RATEMCS0 ;
 int DESC90_RATEMCS1 ;
 int DESC90_RATEMCS10 ;
 int DESC90_RATEMCS11 ;
 int DESC90_RATEMCS12 ;
 int DESC90_RATEMCS13 ;
 int DESC90_RATEMCS14 ;
 int DESC90_RATEMCS15 ;
 int DESC90_RATEMCS2 ;
 int DESC90_RATEMCS3 ;
 int DESC90_RATEMCS32 ;
 int DESC90_RATEMCS4 ;
 int DESC90_RATEMCS5 ;
 int DESC90_RATEMCS6 ;
 int DESC90_RATEMCS7 ;
 int DESC90_RATEMCS8 ;
 int DESC90_RATEMCS9 ;
__attribute__((used)) static u8 MRateToHwRate8190Pci(u8 rate)
{
 u8 ret = DESC90_RATE1M;

 switch (rate) {
 case 152:
  ret = DESC90_RATE1M;
  break;
 case 150:
  ret = DESC90_RATE2M;
  break;
 case 146:
  ret = DESC90_RATE5_5M;
  break;
 case 155:
  ret = DESC90_RATE11M;
  break;
 case 145:
  ret = DESC90_RATE6M;
  break;
 case 144:
  ret = DESC90_RATE9M;
  break;
 case 154:
  ret = DESC90_RATE12M;
  break;
 case 153:
  ret = DESC90_RATE18M;
  break;
 case 151:
  ret = DESC90_RATE24M;
  break;
 case 149:
  ret = DESC90_RATE36M;
  break;
 case 148:
  ret = DESC90_RATE48M;
  break;
 case 147:
  ret = DESC90_RATE54M;
  break;


 case 143:
  ret = DESC90_RATEMCS0;
  break;
 case 142:
  ret = DESC90_RATEMCS1;
  break;
 case 135:
  ret = DESC90_RATEMCS2;
  break;
 case 134:
  ret = DESC90_RATEMCS3;
  break;
 case 133:
  ret = DESC90_RATEMCS4;
  break;
 case 132:
  ret = DESC90_RATEMCS5;
  break;
 case 131:
  ret = DESC90_RATEMCS6;
  break;
 case 130:
  ret = DESC90_RATEMCS7;
  break;
 case 129:
  ret = DESC90_RATEMCS8;
  break;
 case 128:
  ret = DESC90_RATEMCS9;
  break;
 case 141:
  ret = DESC90_RATEMCS10;
  break;
 case 140:
  ret = DESC90_RATEMCS11;
  break;
 case 139:
  ret = DESC90_RATEMCS12;
  break;
 case 138:
  ret = DESC90_RATEMCS13;
  break;
 case 137:
  ret = DESC90_RATEMCS14;
  break;
 case 136:
  ret = DESC90_RATEMCS15;
  break;
 case (0x80 | 0x20):
  ret = DESC90_RATEMCS32;
  break;

 default:
  break;
 }
 return ret;
}
