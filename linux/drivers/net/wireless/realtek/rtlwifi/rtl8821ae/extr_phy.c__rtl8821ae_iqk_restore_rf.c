
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int BIT (int) ;
 int COMP_IQK ;
 int DBG_LOUD ;

 int RFREG_OFFSET_MASK ;
 size_t RF_REG_NUM ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int,size_t,int ,size_t) ;

__attribute__((used)) static void _rtl8821ae_iqk_restore_rf(struct ieee80211_hw *hw,
          enum radio_path path,
          u32 *backup_rf_reg,
          u32 *rf_backup, u32 rf_reg_num)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 i;

 rtl_set_bbreg(hw, 0x82c, BIT(31), 0x0);
 for (i = 0; i < RF_REG_NUM; i++)
  rtl_set_rfreg(hw, path, backup_rf_reg[i], RFREG_OFFSET_MASK,
         rf_backup[i]);

 switch (path) {
 case 128:
  RT_TRACE(rtlpriv, COMP_IQK, DBG_LOUD,
    "RestoreRF Path A Success!!!!\n");
  break;
 default:
   break;
 }
}
