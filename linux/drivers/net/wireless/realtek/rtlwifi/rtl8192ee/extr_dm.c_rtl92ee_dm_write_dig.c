
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ rf_type; } ;
struct dig_t {scalar_t__ cur_igvalue; scalar_t__ pre_igvalue; scalar_t__ stop_dig; } ;
struct rtl_priv {TYPE_1__ phy; struct dig_t dm_digtable; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ RF_1T1R ;
 int ROFDM0_XAAGCCORE1 ;
 int ROFDM0_XBAGCCORE1 ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,scalar_t__) ;

void rtl92ee_dm_write_dig(struct ieee80211_hw *hw, u8 current_igi)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct dig_t *dm_dig = &rtlpriv->dm_digtable;

 if (dm_dig->stop_dig)
  return;

 if (dm_dig->cur_igvalue != current_igi) {
  rtl_set_bbreg(hw, ROFDM0_XAAGCCORE1, 0x7f, current_igi);
  if (rtlpriv->phy.rf_type != RF_1T1R)
   rtl_set_bbreg(hw, ROFDM0_XBAGCCORE1, 0x7f, current_igi);
 }
 dm_dig->pre_igvalue = dm_dig->cur_igvalue;
 dm_dig->cur_igvalue = current_igi;
}
