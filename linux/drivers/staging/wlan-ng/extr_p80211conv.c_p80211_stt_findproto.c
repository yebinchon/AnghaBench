
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ ETH_P_AARP ;

int p80211_stt_findproto(u16 proto)
{







 if (proto == ETH_P_AARP)
  return 1;

 return 0;
}
