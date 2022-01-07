
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int BMASKDWORD ;
 int COMP_IQK ;
 int DBG_LOUD ;
 int RF90_PATH_A ;
 int RF90_PATH_B ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 size_t rtl_get_rfreg (struct ieee80211_hw*,int ,size_t,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;

__attribute__((used)) static void _rtl8821ae_iqk_backup_rf(struct ieee80211_hw *hw, u32 *rfa_backup,
         u32 *rfb_backup, u32 *backup_rf_reg,
         u32 rf_num)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 i;

 rtl_set_bbreg(hw, 0x82c, BIT(31), 0x0);

 for (i = 0; i < rf_num; i++) {
  rfa_backup[i] = rtl_get_rfreg(hw, RF90_PATH_A, backup_rf_reg[i],
           BMASKDWORD);
  rfb_backup[i] = rtl_get_rfreg(hw, RF90_PATH_B, backup_rf_reg[i],
           BMASKDWORD);
 }
 RT_TRACE(rtlpriv, COMP_IQK, DBG_LOUD, "BackupRF Success!!!!\n");
}
