
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int hw; } ;
struct rtl_priv {TYPE_1__ mac80211; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;


 int rtl_set_rfreg (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void halbtc_set_rfreg(void *bt_context, u8 rf_path, u32 reg_addr,
        u32 bit_mask, u32 data)
{
 struct btc_coexist *btcoexist = (struct btc_coexist *)bt_context;
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 rtl_set_rfreg(rtlpriv->mac80211.hw, rf_path, reg_addr, bit_mask, data);
}
