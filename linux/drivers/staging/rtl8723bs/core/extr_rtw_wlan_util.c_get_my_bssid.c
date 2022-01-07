
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wlan_bssid_ex {int * MacAddress; } ;



inline u8 *get_my_bssid(struct wlan_bssid_ex *pnetwork)
{
 return pnetwork->MacAddress;
}
