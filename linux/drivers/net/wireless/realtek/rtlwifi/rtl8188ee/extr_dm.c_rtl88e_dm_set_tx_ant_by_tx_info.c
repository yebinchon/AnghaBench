
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct rtl_efuse {scalar_t__ antenna_div_type; } ;
struct fast_ant_training {int * antsel_c; int * antsel_b; int * antsel_a; } ;
struct rtl_dm {struct fast_ant_training fat_table; } ;
struct ieee80211_hw {int dummy; } ;
typedef int __le32 ;


 scalar_t__ CG_TRX_HW_ANTDIV ;
 scalar_t__ CG_TRX_SMART_ANTDIV ;
 struct rtl_dm* rtl_dm (int ) ;
 struct rtl_efuse* rtl_efuse (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;
 int set_tx_desc_antsel_a (int *,int ) ;
 int set_tx_desc_antsel_b (int *,int ) ;
 int set_tx_desc_antsel_c (int *,int ) ;

void rtl88e_dm_set_tx_ant_by_tx_info(struct ieee80211_hw *hw,
         u8 *pdesc, u32 mac_id)
{
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct rtl_dm *rtldm = rtl_dm(rtl_priv(hw));
 struct fast_ant_training *pfat_table = &rtldm->fat_table;
 __le32 *pdesc32 = (__le32 *)pdesc;

 if ((rtlefuse->antenna_div_type == CG_TRX_HW_ANTDIV) ||
     (rtlefuse->antenna_div_type == CG_TRX_SMART_ANTDIV)) {
  set_tx_desc_antsel_a(pdesc32, pfat_table->antsel_a[mac_id]);
  set_tx_desc_antsel_b(pdesc32, pfat_table->antsel_b[mac_id]);
  set_tx_desc_antsel_c(pdesc32, pfat_table->antsel_c[mac_id]);
 }
}
