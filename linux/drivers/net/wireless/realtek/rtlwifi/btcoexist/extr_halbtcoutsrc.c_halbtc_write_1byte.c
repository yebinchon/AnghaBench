
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;


 int rtl_write_byte (struct rtl_priv*,int ,int ) ;

__attribute__((used)) static void halbtc_write_1byte(void *bt_context, u32 reg_addr, u32 data)
{
 struct btc_coexist *btcoexist = (struct btc_coexist *)bt_context;
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 rtl_write_byte(rtlpriv, reg_addr, data);
}
