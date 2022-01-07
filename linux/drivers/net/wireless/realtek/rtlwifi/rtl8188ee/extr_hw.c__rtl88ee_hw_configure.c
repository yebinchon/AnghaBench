
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int RATE_ALL_CCK ;
 int RATE_ALL_OFDM_AG ;
 int REG_HWSEQ_CTRL ;
 int REG_RRSR ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void _rtl88ee_hw_configure(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 reg_prsr;

 reg_prsr = RATE_ALL_CCK | RATE_ALL_OFDM_AG;

 rtl_write_dword(rtlpriv, REG_RRSR, reg_prsr);
 rtl_write_byte(rtlpriv, REG_HWSEQ_CTRL, 0xFF);
}
