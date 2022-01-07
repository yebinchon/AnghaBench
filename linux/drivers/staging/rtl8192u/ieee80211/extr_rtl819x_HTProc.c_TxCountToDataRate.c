
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ieee80211_device {int dummy; } ;


 int*** MCS_DATA_RATE ;

u16 TxCountToDataRate(struct ieee80211_device *ieee, u8 nDataRate)
{

 u16 CCKOFDMRate[12] = {0x02, 0x04, 0x0b, 0x16, 0x0c, 0x12, 0x18, 0x24, 0x30, 0x48, 0x60, 0x6c};
 u8 is40MHz = 0;
 u8 isShortGI = 0;

 if (nDataRate < 12) {
  return CCKOFDMRate[nDataRate];
 } else {
  if (nDataRate >= 0x10 && nDataRate <= 0x1f) {
   is40MHz = 0;
   isShortGI = 0;


  } else if (nDataRate >= 0x20 && nDataRate <= 0x2f) {
   is40MHz = 1;
   isShortGI = 0;


  } else if (nDataRate >= 0x30 && nDataRate <= 0x3f) {
   is40MHz = 0;
   isShortGI = 1;


  } else if (nDataRate >= 0x40 && nDataRate <= 0x4f) {
   is40MHz = 1;
   isShortGI = 1;


  }
  return MCS_DATA_RATE[is40MHz][isShortGI][nDataRate & 0xf];
 }
}
