
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;


 int memcpy (int *,int *,scalar_t__) ;
 int * rtw_get_wps_attr (int *,scalar_t__,int ,int *,scalar_t__*) ;

u8 *rtw_get_wps_attr_content(u8 *wps_ie, uint wps_ielen, u16 target_attr_id, u8 *buf_content, uint *len_content)
{
 u8 *attr_ptr;
 u32 attr_len;

 if (len_content)
  *len_content = 0;

 attr_ptr = rtw_get_wps_attr(wps_ie, wps_ielen, target_attr_id, ((void*)0), &attr_len);

 if (attr_ptr && attr_len) {
  if (buf_content)
   memcpy(buf_content, attr_ptr + 4, attr_len - 4);

  if (len_content)
   *len_content = attr_len - 4;

  return attr_ptr + 4;
 }

 return ((void*)0);
}
