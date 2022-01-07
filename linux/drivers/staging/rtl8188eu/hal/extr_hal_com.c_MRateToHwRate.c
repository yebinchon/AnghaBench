
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DESC_RATE11M ;
 int DESC_RATE12M ;
 int DESC_RATE18M ;
 int DESC_RATE1M ;
 int DESC_RATE24M ;
 int DESC_RATE2M ;
 int DESC_RATE36M ;
 int DESC_RATE48M ;
 int DESC_RATE54M ;
 int DESC_RATE5_5M ;
 int DESC_RATE6M ;
 int DESC_RATE9M ;
u8 MRateToHwRate(u8 rate)
{
 u8 ret = DESC_RATE1M;

 switch (rate) {

 case 138:
  ret = DESC_RATE1M;
  break;
 case 137:
  ret = DESC_RATE2M;
  break;
 case 136:
  ret = DESC_RATE5_5M;
  break;
 case 139:
  ret = DESC_RATE11M;
  break;
 case 129:
  ret = DESC_RATE6M;
  break;
 case 128:
  ret = DESC_RATE9M;
  break;
 case 135:
  ret = DESC_RATE12M;
  break;
 case 134:
  ret = DESC_RATE18M;
  break;
 case 133:
  ret = DESC_RATE24M;
  break;
 case 132:
  ret = DESC_RATE36M;
  break;
 case 131:
  ret = DESC_RATE48M;
  break;
 case 130:
  ret = DESC_RATE54M;
  break;
 default:
  break;
 }
 return ret;
}
