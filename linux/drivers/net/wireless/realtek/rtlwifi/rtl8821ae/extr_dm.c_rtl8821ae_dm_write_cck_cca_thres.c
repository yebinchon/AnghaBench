
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dig_t {scalar_t__ cur_cck_cca_thres; scalar_t__ pre_cck_cca_thres; } ;
struct rtl_priv {struct dig_t dm_digtable; } ;
struct ieee80211_hw {int dummy; } ;


 int DM_REG_CCK_CCA_11AC ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,scalar_t__) ;

void rtl8821ae_dm_write_cck_cca_thres(struct ieee80211_hw *hw, u8 current_cca)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct dig_t *dm_digtable = &rtlpriv->dm_digtable;

 if (dm_digtable->cur_cck_cca_thres != current_cca)
  rtl_write_byte(rtlpriv, DM_REG_CCK_CCA_11AC, current_cca);

 dm_digtable->pre_cck_cca_thres = dm_digtable->cur_cck_cca_thres;
 dm_digtable->cur_cck_cca_thres = current_cca;
}
