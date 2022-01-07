
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct wlan_bssid_ex {scalar_t__ IELength; } ;


 scalar_t__ MAX_IE_SZ ;

uint r8712_get_wlan_bssid_ex_sz(struct wlan_bssid_ex *bss)
{
 return sizeof(*bss) + bss->IELength - MAX_IE_SZ;
}
