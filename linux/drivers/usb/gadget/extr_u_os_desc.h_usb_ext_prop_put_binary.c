
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memcpy (int ,int const*,int) ;
 int put_unaligned_le32 (int,int ) ;
 int usb_ext_prop_data_len_ptr (int *,int) ;
 int usb_ext_prop_data_ptr (int *,int) ;

__attribute__((used)) static inline void usb_ext_prop_put_binary(u8 *buf, int pnl, const u8 *data,
        int data_len)
{
 put_unaligned_le32(data_len, usb_ext_prop_data_len_ptr(buf, pnl));
 memcpy(usb_ext_prop_data_ptr(buf, pnl), data, data_len);
}
