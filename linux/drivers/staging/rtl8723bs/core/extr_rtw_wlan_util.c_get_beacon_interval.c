
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wlan_bssid_ex {int IEs; } ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;
 int memcpy (unsigned char*,int ,int) ;
 int rtw_get_beacon_interval_from_ie (int ) ;

u16 get_beacon_interval(struct wlan_bssid_ex *bss)
{
 __le16 val;
 memcpy((unsigned char *)&val, rtw_get_beacon_interval_from_ie(bss->IEs), 2);

 return le16_to_cpu(val);
}
