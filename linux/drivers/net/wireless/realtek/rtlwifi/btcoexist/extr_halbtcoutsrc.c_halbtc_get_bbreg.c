
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int hw; } ;
struct rtl_priv {TYPE_1__ mac80211; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;


 int rtl_get_bbreg (int ,int ,int ) ;

__attribute__((used)) static u32 halbtc_get_bbreg(void *bt_context, u32 reg_addr, u32 bit_mask)
{
 struct btc_coexist *btcoexist = (struct btc_coexist *)bt_context;
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 return rtl_get_bbreg(rtlpriv->mac80211.hw, reg_addr, bit_mask);
}
