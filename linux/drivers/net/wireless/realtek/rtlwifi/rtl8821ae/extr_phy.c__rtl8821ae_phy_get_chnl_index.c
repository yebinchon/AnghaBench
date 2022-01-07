
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CHANNEL_MAX_NUMBER_5G ;
 int* channel5g ;

__attribute__((used)) static bool _rtl8821ae_phy_get_chnl_index(u8 channel, u8 *chnl_index)
{
 u8 i = 0;
 bool in_24g = 1;

 if (channel <= 14) {
  in_24g = 1;
  *chnl_index = channel - 1;
 } else {
  in_24g = 0;

  for (i = 0; i < CHANNEL_MAX_NUMBER_5G; ++i) {
   if (channel5g[i] == channel) {
    *chnl_index = i;
    return in_24g;
   }
  }
 }
 return in_24g;
}
