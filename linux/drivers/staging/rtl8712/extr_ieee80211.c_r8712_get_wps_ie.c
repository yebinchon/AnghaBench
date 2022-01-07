
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
typedef int u8 ;


 int _WPA_IE_ID_ ;
 int memcmp (int*,int*,int) ;
 int memcpy (int*,int*,int) ;

int r8712_get_wps_ie(u8 *in_ie, uint in_len, u8 *wps_ie, uint *wps_ielen)
{
 int match;
 uint cnt;
 u8 eid, wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};

 cnt = 12;
 match = 0;
 while (cnt < in_len) {
  eid = in_ie[cnt];
  if ((eid == _WPA_IE_ID_) &&
      (!memcmp(&in_ie[cnt + 2], wps_oui, 4))) {
   memcpy(wps_ie, &in_ie[cnt], in_ie[cnt + 1] + 2);
   *wps_ielen = in_ie[cnt + 1] + 2;
   cnt += in_ie[cnt + 1] + 2;
   match = 1;
   break;
  }
  cnt += in_ie[cnt + 1] + 2;
 }
 return match;
}
