
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int USB_EXT_PROP_B_PROPERTY_NAME ;
 int * __usb_ext_prop_ptr (int *,int ) ;

__attribute__((used)) static inline u8 *usb_ext_prop_name_ptr(u8 *buf)
{
 return __usb_ext_prop_ptr(buf, USB_EXT_PROP_B_PROPERTY_NAME);
}
