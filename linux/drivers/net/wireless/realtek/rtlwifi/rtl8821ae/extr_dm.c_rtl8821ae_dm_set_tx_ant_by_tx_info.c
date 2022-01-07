
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct rtl_efuse {scalar_t__ antenna_div_type; } ;
struct fast_ant_training {int * antsel_a; } ;
struct rtl_dm {struct fast_ant_training fat_table; } ;
struct ieee80211_hw {int dummy; } ;
typedef int __le32 ;


 scalar_t__ CG_TRX_HW_ANTDIV ;
 scalar_t__ HARDWARE_TYPE_RTL8812AE ;
 struct rtl_dm* rtl_dm (int ) ;
 struct rtl_efuse* rtl_efuse (int ) ;
 struct rtl_hal* rtl_hal (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;
 int set_tx_desc_tx_ant (int *,int ) ;

void rtl8821ae_dm_set_tx_ant_by_tx_info(struct ieee80211_hw *hw,
     u8 *pdesc, u32 mac_id)
{
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_dm *rtldm = rtl_dm(rtl_priv(hw));
 struct fast_ant_training *pfat_table = &rtldm->fat_table;
 __le32 *pdesc32 = (__le32 *)pdesc;

 if (rtlhal->hw_type != HARDWARE_TYPE_RTL8812AE)
  return;

 if (rtlefuse->antenna_div_type == CG_TRX_HW_ANTDIV)
  set_tx_desc_tx_ant(pdesc32, pfat_table->antsel_a[mac_id]);
}
