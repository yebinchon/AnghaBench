
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* phy_lc_calibrate ) (struct ieee80211_hw*,int) ;} ;


 scalar_t__ IS_92C_SERIAL (int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int) ;
 int stub2 (struct ieee80211_hw*,int) ;

void rtl92c_phy_lc_calibrate(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 if (IS_92C_SERIAL(rtlhal->version))
  rtlpriv->cfg->ops->phy_lc_calibrate(hw, 1);
 else
  rtlpriv->cfg->ops->phy_lc_calibrate(hw, 0);
}
