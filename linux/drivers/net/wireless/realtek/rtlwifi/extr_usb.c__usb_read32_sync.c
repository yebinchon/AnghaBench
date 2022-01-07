
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_priv {int dummy; } ;


 int _usb_read_sync (struct rtl_priv*,int ,int) ;

__attribute__((used)) static u32 _usb_read32_sync(struct rtl_priv *rtlpriv, u32 addr)
{
 return _usb_read_sync(rtlpriv, addr, 4);
}
