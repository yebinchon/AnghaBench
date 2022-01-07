
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ SsidLength; int Ssid; } ;
struct TYPE_3__ {scalar_t__ DSConfig; } ;
struct wlan_bssid_ex {TYPE_2__ Ssid; int MacAddress; TYPE_1__ Configuration; int IEs; } ;


 scalar_t__ ETH_ALEN ;
 int WLAN_CAPABILITY_BSS ;
 int WLAN_CAPABILITY_IBSS ;
 int memcmp (int ,int ,scalar_t__) ;
 int memcpy (int *,int ,int) ;
 int r8712_get_capability_from_ie (int ) ;

__attribute__((used)) static int is_same_network(struct wlan_bssid_ex *src,
      struct wlan_bssid_ex *dst)
{
 u16 s_cap, d_cap;

 memcpy((u8 *)&s_cap, r8712_get_capability_from_ie(src->IEs), 2);
 memcpy((u8 *)&d_cap, r8712_get_capability_from_ie(dst->IEs), 2);
 return (src->Ssid.SsidLength == dst->Ssid.SsidLength) &&
   (src->Configuration.DSConfig ==
   dst->Configuration.DSConfig) &&
   ((!memcmp(src->MacAddress, dst->MacAddress,
   ETH_ALEN))) &&
   ((!memcmp(src->Ssid.Ssid,
     dst->Ssid.Ssid,
     src->Ssid.SsidLength))) &&
   ((s_cap & WLAN_CAPABILITY_IBSS) ==
   (d_cap & WLAN_CAPABILITY_IBSS)) &&
   ((s_cap & WLAN_CAPABILITY_BSS) ==
   (d_cap & WLAN_CAPABILITY_BSS));

}
