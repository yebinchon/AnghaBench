
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;


 int _WPA_IE_ID_ ;
 int memcmp (int*,int*,int) ;

u8 rtw_is_wps_ie(u8 *ie_ptr, uint *wps_ielen)
{
 u8 match = 0;
 u8 eid, wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};

 if (!ie_ptr)
  return match;

 eid = ie_ptr[0];

 if ((eid == _WPA_IE_ID_) && (!memcmp(&ie_ptr[2], wps_oui, 4))) {
  *wps_ielen = ie_ptr[1] + 2;
  match = 1;
 }
 return match;
}
