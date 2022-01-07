
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NL80211_BAND_2GHZ ;

__attribute__((used)) static int rtw_ieee80211_channel_to_frequency(int chan, int band)
{


 if (band == NL80211_BAND_2GHZ) {
  if (chan == 14)
   return 2484;
             else if (chan < 14)
   return 2407 + chan * 5;
 }

 return 0;
}
