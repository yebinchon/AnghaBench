
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iqk_lock; } ;
struct rtl_phy {int lck_inprogress; } ;
struct rtl_priv {TYPE_1__ locks; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 int _rtl8821ae_phy_iq_calibrate (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rtl8821ae_phy_iq_calibrate(struct ieee80211_hw *hw, bool b_recovery)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;

 if (!rtlphy->lck_inprogress) {
  spin_lock(&rtlpriv->locks.iqk_lock);
  rtlphy->lck_inprogress = 1;
  spin_unlock(&rtlpriv->locks.iqk_lock);

  _rtl8821ae_phy_iq_calibrate(hw);

  spin_lock(&rtlpriv->locks.iqk_lock);
  rtlphy->lck_inprogress = 0;
  spin_unlock(&rtlpriv->locks.iqk_lock);
 }
}
