
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dynamic_txpower_enable; void* dynamic_txhighpower_lvl; void* last_dtp_lvl; } ;
struct TYPE_3__ {scalar_t__ interface; int board_type; } ;
struct rtl_priv {TYPE_2__ dm; TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ INTF_USB ;
 void* TXHIGHPWRLEVEL_NORMAL ;
 int dm_savepowerindex (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl92c_dm_init_dynamic_txpower(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (rtlpriv->rtlhal.interface == INTF_USB &&
     rtlpriv->rtlhal.board_type & 0x1) {
  dm_savepowerindex(hw);
  rtlpriv->dm.dynamic_txpower_enable = 1;
 } else {
  rtlpriv->dm.dynamic_txpower_enable = 0;
 }
 rtlpriv->dm.last_dtp_lvl = TXHIGHPWRLEVEL_NORMAL;
 rtlpriv->dm.dynamic_txhighpower_lvl = TXHIGHPWRLEVEL_NORMAL;
}
