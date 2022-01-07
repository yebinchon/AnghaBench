
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;


 int _usb_read_sync (struct rtl_priv*,int ,int) ;

__attribute__((used)) static u8 _usb_read8_sync(struct rtl_priv *rtlpriv, u32 addr)
{
 return (u8)_usb_read_sync(rtlpriv, addr, 1);
}
