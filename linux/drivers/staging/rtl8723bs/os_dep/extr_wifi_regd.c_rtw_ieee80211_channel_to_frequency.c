
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int rtw_ieee80211_channel_to_frequency(int chan, int band)
{





 if (chan == 14)
  return 2484;
 else if (chan < 14)
  return 2407 + chan * 5;
 else
  return 0;
}
