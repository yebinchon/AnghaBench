
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 scalar_t__ RTW_GET_BE16 (int*) ;
 int _VENDOR_SPECIFIC_IE_ ;
 scalar_t__ memcmp (int*,int*,int) ;
 int memcpy (int*,int*,scalar_t__) ;

u8 *rtw_get_wps_attr(u8 *wps_ie, uint wps_ielen, u16 target_attr_id, u8 *buf_attr, u32 *len_attr)
{
 u8 *attr_ptr = ((void*)0);
 u8 *target_attr_ptr = ((void*)0);
 u8 wps_oui[4] = {0x00, 0x50, 0xF2, 0x04};

 if (len_attr)
  *len_attr = 0;

 if ((wps_ie[0] != _VENDOR_SPECIFIC_IE_) ||
  (memcmp(wps_ie + 2, wps_oui, 4))) {
  return attr_ptr;
 }


 attr_ptr = wps_ie + 6;

 while (attr_ptr - wps_ie < wps_ielen) {

  u16 attr_id = RTW_GET_BE16(attr_ptr);
  u16 attr_data_len = RTW_GET_BE16(attr_ptr + 2);
  u16 attr_len = attr_data_len + 4;


  if (attr_id == target_attr_id) {
   target_attr_ptr = attr_ptr;

   if (buf_attr)
    memcpy(buf_attr, attr_ptr, attr_len);

   if (len_attr)
    *len_attr = attr_len;

   break;
  } else {
   attr_ptr += attr_len;
  }
 }

 return target_attr_ptr;
}
