
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wlan_bssid_ex {int ies; } ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;
 int memcpy (int *,int ,int) ;
 int rtw_get_capability_from_ie (int ) ;

u16 rtw_get_capability(struct wlan_bssid_ex *bss)
{
 __le16 val;

 memcpy((u8 *)&val, rtw_get_capability_from_ie(bss->ies), 2);

 return le16_to_cpu(val);
}
