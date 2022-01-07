
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int put_unaligned_le32 (int,int ) ;
 int usb_ext_prop_type_ptr (int *) ;

__attribute__((used)) static inline void usb_ext_prop_put_type(u8 *buf, int type)
{
 put_unaligned_le32(type, usb_ext_prop_type_ptr(buf));
}
