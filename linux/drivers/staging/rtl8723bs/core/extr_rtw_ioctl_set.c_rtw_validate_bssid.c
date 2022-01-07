
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ is_broadcast_mac_addr (int*) ;
 scalar_t__ is_multicast_mac_addr (int*) ;
 scalar_t__ is_zero_mac_addr (int*) ;

u8 rtw_validate_bssid(u8 *bssid)
{
 u8 ret = 1;

 if (is_zero_mac_addr(bssid)
  || is_broadcast_mac_addr(bssid)
  || is_multicast_mac_addr(bssid)
 ) {
  ret = 0;
 }

 return ret;
}
