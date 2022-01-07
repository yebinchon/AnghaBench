
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {scalar_t__ chip_interface; struct rtl_priv* adapter; } ;


 scalar_t__ BTC_INTF_PCI ;
 scalar_t__ BTC_INTF_SDIO ;
 scalar_t__ BTC_INTF_USB ;
 int rtl_write_byte (struct rtl_priv*,int ,int ) ;

__attribute__((used)) static void halbtc_write_local_reg_1byte(void *btc_context, u32 reg_addr,
      u8 data)
{
 struct btc_coexist *btcoexist = (struct btc_coexist *)btc_context;
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 if (btcoexist->chip_interface == BTC_INTF_SDIO)
  ;
 else if (btcoexist->chip_interface == BTC_INTF_PCI)
  rtl_write_byte(rtlpriv, reg_addr, data);
 else if (btcoexist->chip_interface == BTC_INTF_USB)
  rtl_write_byte(rtlpriv, reg_addr, data);
}
