
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int u8 ;


 int USB_EXT_PROP_B_PROPERTY_NAME ;
 int UTF16_LITTLE_ENDIAN ;
 int put_unaligned_le16 (int,int *) ;
 int strlen (char const*) ;
 int * usb_ext_prop_name_len_ptr (int *) ;
 scalar_t__ usb_ext_prop_name_ptr (int *) ;
 int utf8s_to_utf16s (char const*,int ,int ,int *,int) ;

__attribute__((used)) static inline int usb_ext_prop_put_name(u8 *buf, const char *name, int pnl)
{
 int result;

 put_unaligned_le16(pnl, usb_ext_prop_name_len_ptr(buf));
 result = utf8s_to_utf16s(name, strlen(name), UTF16_LITTLE_ENDIAN,
  (wchar_t *) usb_ext_prop_name_ptr(buf), pnl - 2);
 if (result < 0)
  return result;

 put_unaligned_le16(0, &buf[USB_EXT_PROP_B_PROPERTY_NAME + pnl - 2]);

 return pnl;
}
