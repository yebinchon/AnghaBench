
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int u8 ;


 int USB_EXT_PROP_B_PROPERTY_DATA ;
 int UTF16_LITTLE_ENDIAN ;
 int put_unaligned_le16 (int ,int *) ;
 int put_unaligned_le32 (int,int ) ;
 int usb_ext_prop_data_len_ptr (int *,int) ;
 scalar_t__ usb_ext_prop_data_ptr (int *,int) ;
 int utf8s_to_utf16s (char const*,int,int ,int *,int) ;

__attribute__((used)) static inline int usb_ext_prop_put_unicode(u8 *buf, int pnl, const char *string,
        int data_len)
{
 int result;
 put_unaligned_le32(data_len, usb_ext_prop_data_len_ptr(buf, pnl));
 result = utf8s_to_utf16s(string, data_len >> 1, UTF16_LITTLE_ENDIAN,
   (wchar_t *) usb_ext_prop_data_ptr(buf, pnl),
   data_len - 2);
 if (result < 0)
  return result;

 put_unaligned_le16(0,
  &buf[USB_EXT_PROP_B_PROPERTY_DATA + pnl + data_len - 2]);

 return data_len;
}
