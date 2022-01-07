
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int FINIT ;
 int INIT_IQK ;
 int MASKDWORD ;
 int RTPRINT (struct rtl_priv*,int ,int ,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,size_t,int ,size_t) ;

__attribute__((used)) static void _rtl92d_phy_reload_adda_registers(struct ieee80211_hw *hw,
           u32 *adda_reg, u32 *adda_backup,
           u32 regnum)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 i;

 RTPRINT(rtlpriv, FINIT, INIT_IQK,
  "Reload ADDA power saving parameters !\n");
 for (i = 0; i < regnum; i++)
  rtl_set_bbreg(hw, adda_reg[i], MASKDWORD, adda_backup[i]);
}
