
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int IEEE80211_1ADDR_LEN ;
 int IEEE80211_2ADDR_LEN ;
 int IEEE80211_3ADDR_LEN ;
 int IEEE80211_4ADDR_LEN ;
 int IEEE80211_FCTL_FROMDS ;
 int IEEE80211_FCTL_TODS ;


 int IEEE80211_QOS_HAS_SEQ (int) ;


 int WLAN_FC_GET_STYPE (int) ;
 int WLAN_FC_GET_TYPE (int) ;

__attribute__((used)) static inline int ieee80211_get_hdrlen(u16 fc)
{
 int hdrlen = IEEE80211_3ADDR_LEN;

 switch (WLAN_FC_GET_TYPE(fc)) {
 case 130:
  if ((fc & IEEE80211_FCTL_FROMDS) && (fc & IEEE80211_FCTL_TODS))
   hdrlen = IEEE80211_4ADDR_LEN;
  if (IEEE80211_QOS_HAS_SEQ(fc))
   hdrlen += 2;
  break;
 case 131:
  switch (WLAN_FC_GET_STYPE(fc)) {
  case 128:
  case 129:
   hdrlen = IEEE80211_1ADDR_LEN;
   break;
  default:
   hdrlen = IEEE80211_2ADDR_LEN;
   break;
  }
  break;
 }

 return hdrlen;
}
