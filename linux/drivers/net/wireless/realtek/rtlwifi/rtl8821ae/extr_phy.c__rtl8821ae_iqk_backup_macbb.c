
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_IQK ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 size_t rtl_read_dword (struct rtl_priv*,size_t) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;

__attribute__((used)) static void _rtl8821ae_iqk_backup_macbb(struct ieee80211_hw *hw,
     u32 *macbb_backup,
     u32 *backup_macbb_reg, u32 mac_bb_num)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 i;

 rtl_set_bbreg(hw, 0x82c, BIT(31), 0x0);

 for (i = 0; i < mac_bb_num; i++)
  macbb_backup[i] = rtl_read_dword(rtlpriv, backup_macbb_reg[i]);

 RT_TRACE(rtlpriv, COMP_IQK, DBG_LOUD, "BackupMacBB Success!!!!\n");
}
