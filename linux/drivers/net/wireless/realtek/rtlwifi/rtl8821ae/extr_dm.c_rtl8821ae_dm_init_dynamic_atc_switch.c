
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cfo_threshold; int atc_status; int crystal_cap; } ;
struct TYPE_3__ {int crystalcap; } ;
struct rtl_priv {TYPE_2__ dm; TYPE_1__ efuse; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int CFO_THRESHOLD_XTAL ;
 int ROFDM1_CFOTRACKING ;
 int rtl_get_bbreg (struct ieee80211_hw*,int ,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8821ae_dm_init_dynamic_atc_switch(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtlpriv->dm.crystal_cap = rtlpriv->efuse.crystalcap;

 rtlpriv->dm.atc_status = rtl_get_bbreg(hw, ROFDM1_CFOTRACKING, BIT(11));
 rtlpriv->dm.cfo_threshold = CFO_THRESHOLD_XTAL;
}
