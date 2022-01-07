
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ ETH_ALEN ;
 scalar_t__ WLAN_FCS_LEN ;



 int WLAN_GET_FC_FROMDS (scalar_t__) ;
 int WLAN_GET_FC_FSTYPE (scalar_t__) ;
 int WLAN_GET_FC_FTYPE (scalar_t__) ;
 int WLAN_GET_FC_TODS (scalar_t__) ;
 scalar_t__ WLAN_HDR_A3_LEN ;
 scalar_t__ wlan_ctl_framelen (int ) ;

__attribute__((used)) static inline u16 p80211_headerlen(u16 fctl)
{
 u16 hdrlen = 0;

 switch (WLAN_GET_FC_FTYPE(fctl)) {
 case 128:
  hdrlen = WLAN_HDR_A3_LEN;
  break;
 case 129:
  hdrlen = WLAN_HDR_A3_LEN;
  if (WLAN_GET_FC_TODS(fctl) && WLAN_GET_FC_FROMDS(fctl))
   hdrlen += ETH_ALEN;
  break;
 case 130:
  hdrlen = wlan_ctl_framelen(WLAN_GET_FC_FSTYPE(fctl)) -
      WLAN_FCS_LEN;
  break;
 default:
  hdrlen = WLAN_HDR_A3_LEN;
 }

 return hdrlen;
}
