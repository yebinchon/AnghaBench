
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ SsidLength; int Ssid; } ;
struct wlan_bssid_ex {TYPE_1__ Ssid; int MacAddress; int IEs; } ;
typedef int __le16 ;


 scalar_t__ ETH_ALEN ;
 int WLAN_CAPABILITY_BSS ;
 int WLAN_CAPABILITY_IBSS ;
 int le16_to_cpu (int ) ;
 int memcmp (int ,int ,scalar_t__) ;
 int memcpy (int *,int ,int) ;
 int rtw_bug_check (struct wlan_bssid_ex*,struct wlan_bssid_ex*,int*,int*) ;
 int rtw_get_capability_from_ie (int ) ;

int is_same_network(struct wlan_bssid_ex *src, struct wlan_bssid_ex *dst, u8 feature)
{
 u16 s_cap, d_cap;
 __le16 tmps, tmpd;

 if (rtw_bug_check(dst, src, &s_cap, &d_cap) == 0)
   return 0;

 memcpy((u8 *)&tmps, rtw_get_capability_from_ie(src->IEs), 2);
 memcpy((u8 *)&tmpd, rtw_get_capability_from_ie(dst->IEs), 2);


 s_cap = le16_to_cpu(tmps);
 d_cap = le16_to_cpu(tmpd);

 return (src->Ssid.SsidLength == dst->Ssid.SsidLength) &&

   ((!memcmp(src->MacAddress, dst->MacAddress, ETH_ALEN))) &&
   ((!memcmp(src->Ssid.Ssid, dst->Ssid.Ssid, src->Ssid.SsidLength))) &&
   ((s_cap & WLAN_CAPABILITY_IBSS) ==
   (d_cap & WLAN_CAPABILITY_IBSS)) &&
   ((s_cap & WLAN_CAPABILITY_BSS) ==
   (d_cap & WLAN_CAPABILITY_BSS));

}
