
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ ssid_length; int ssid; } ;
struct wlan_bssid_ex {TYPE_1__ ssid; int MacAddress; int ies; } ;
typedef int __le16 ;


 scalar_t__ ETH_ALEN ;
 int WLAN_CAPABILITY_ESS ;
 int WLAN_CAPABILITY_IBSS ;
 int le16_to_cpu (int ) ;
 int memcmp (int ,int ,scalar_t__) ;
 int memcpy (int *,int ,int) ;
 int rtw_get_capability_from_ie (int ) ;

int is_same_network(struct wlan_bssid_ex *src, struct wlan_bssid_ex *dst)
{
 u16 s_cap, d_cap;
 __le16 le_scap, le_dcap;

 memcpy((u8 *)&le_scap, rtw_get_capability_from_ie(src->ies), 2);
 memcpy((u8 *)&le_dcap, rtw_get_capability_from_ie(dst->ies), 2);

 s_cap = le16_to_cpu(le_scap);
 d_cap = le16_to_cpu(le_dcap);

 return ((src->ssid.ssid_length == dst->ssid.ssid_length) &&
  (!memcmp(src->MacAddress, dst->MacAddress, ETH_ALEN)) &&
  (!memcmp(src->ssid.ssid, dst->ssid.ssid, src->ssid.ssid_length)) &&
  ((s_cap & WLAN_CAPABILITY_IBSS) ==
  (d_cap & WLAN_CAPABILITY_IBSS)) &&
  ((s_cap & WLAN_CAPABILITY_ESS) ==
  (d_cap & WLAN_CAPABILITY_ESS)));
}
