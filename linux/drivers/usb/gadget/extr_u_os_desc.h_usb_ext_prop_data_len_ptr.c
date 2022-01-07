
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ USB_EXT_PROP_DW_PROPERTY_DATA_LENGTH ;
 int * __usb_ext_prop_ptr (int *,scalar_t__) ;

__attribute__((used)) static inline u8 *usb_ext_prop_data_len_ptr(u8 *buf, size_t off)
{
 return __usb_ext_prop_ptr(buf,
      USB_EXT_PROP_DW_PROPERTY_DATA_LENGTH + off);
}
