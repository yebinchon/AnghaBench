
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int current_turbo_edca; int is_cur_rdlstate; int is_any_nonbepkts; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;


 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl92ee_dm_init_edca_turbo(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtlpriv->dm.current_turbo_edca = 0;
 rtlpriv->dm.is_cur_rdlstate = 0;
 rtlpriv->dm.is_any_nonbepkts = 0;
}
