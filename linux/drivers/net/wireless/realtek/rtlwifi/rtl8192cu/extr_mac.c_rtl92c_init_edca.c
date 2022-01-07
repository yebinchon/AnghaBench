
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int DIS_EDCA_CNT_DWN ;
 int REG_AGGR_BREAK_TIME ;
 int REG_ATIMWND ;
 int REG_BAR_MODE_CTRL ;
 int REG_BCNDMATIM ;
 int REG_EDCA_BE_PARAM ;
 int REG_EDCA_BK_PARAM ;
 int REG_EDCA_VI_PARAM ;
 int REG_EDCA_VO_PARAM ;
 int REG_NAV_PROT_LEN ;
 int REG_PIFS ;
 int REG_PROT_MODE_CTRL ;
 int REG_RD_CTRL ;
 int REG_SIFS_CCK ;
 int REG_SIFS_OFDM ;
 int rtl92c_set_cck_sifs (struct ieee80211_hw*,int,int) ;
 int rtl92c_set_ofdm_sifs (struct ieee80211_hw*,int,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_word (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

void rtl92c_init_edca(struct ieee80211_hw *hw)
{
 u16 value16;
 struct rtl_priv *rtlpriv = rtl_priv(hw);


 value16 = rtl_read_word(rtlpriv, REG_RD_CTRL);
 value16 |= DIS_EDCA_CNT_DWN;
 rtl_write_word(rtlpriv, REG_RD_CTRL, value16);


 rtl92c_set_cck_sifs(hw, 0xa, 0xa);
 rtl92c_set_ofdm_sifs(hw, 0xe, 0xe);

 rtl_write_word(rtlpriv, REG_SIFS_CCK, 0x0a0a);
 rtl_write_word(rtlpriv, REG_SIFS_OFDM, 0x1010);
 rtl_write_word(rtlpriv, REG_PROT_MODE_CTRL, 0x0204);
 rtl_write_dword(rtlpriv, REG_BAR_MODE_CTRL, 0x014004);

 rtl_write_dword(rtlpriv, REG_EDCA_BE_PARAM, 0x005EA42B);
 rtl_write_dword(rtlpriv, REG_EDCA_BK_PARAM, 0x0000A44F);
 rtl_write_dword(rtlpriv, REG_EDCA_VI_PARAM, 0x005EA324);
 rtl_write_dword(rtlpriv, REG_EDCA_VO_PARAM, 0x002FA226);

 rtl_write_byte(rtlpriv, REG_PIFS, 0x1C);

 rtl_write_byte(rtlpriv, REG_AGGR_BREAK_TIME, 0x16);
 rtl_write_word(rtlpriv, REG_NAV_PROT_LEN, 0x0040);
 rtl_write_byte(rtlpriv, REG_BCNDMATIM, 0x02);
 rtl_write_byte(rtlpriv, REG_ATIMWND, 0x02);
}
