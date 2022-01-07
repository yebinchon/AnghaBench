
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int IEEE80211_FCTL_FROMDS ;
 int IEEE80211_FCTL_TODS ;


 int IEEE80211_QOS_DATAGRP ;


 int WLAN_FC_GET_STYPE (int) ;
 int WLAN_FC_GET_TYPE (int) ;

__attribute__((used)) static inline int ieee80211_get_hdrlen(u16 fc)
{
 int hdrlen = 24;

 switch (WLAN_FC_GET_TYPE(fc)) {
 case 130:
  if (fc & IEEE80211_QOS_DATAGRP)
   hdrlen += 2;
  if ((fc & IEEE80211_FCTL_FROMDS) && (fc & IEEE80211_FCTL_TODS))
   hdrlen += 6;
  break;
 case 131:
  switch (WLAN_FC_GET_STYPE(fc)) {
  case 128:
  case 129:
   hdrlen = 10;
   break;
  default:
   hdrlen = 16;
   break;
  }
  break;
 }
 return hdrlen;
}
