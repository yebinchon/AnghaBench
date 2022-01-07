
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_mac {int beacon_interval; scalar_t__ opmode; } ;
struct ieee80211_hw {int dummy; } ;


 int ATIMWND ;
 int BCN_DMATIME ;
 int BCN_DRV_EARLY_INT ;
 int BCN_ERR_THRESH ;
 int BCN_INTERVAL ;
 int BCN_TCFG_CW_SHIFT ;
 int BCN_TCFG_IFS ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int rtl92s_phy_set_beacon_hwreg (struct ieee80211_hw*,int) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

void rtl92se_set_beacon_related_registers(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 u16 bcntime_cfg = 0;
 u16 bcn_cw = 6, bcn_ifs = 0xf;
 u16 atim_window = 2;


 rtl_write_word(rtlpriv, ATIMWND, atim_window);


 rtl_write_word(rtlpriv, BCN_INTERVAL, mac->beacon_interval);




 rtl_write_word(rtlpriv, BCN_DRV_EARLY_INT, 10 << 4);



 rtl_write_word(rtlpriv, BCN_DMATIME, 256);




 rtl_write_byte(rtlpriv, BCN_ERR_THRESH, 100);


 if (mac->opmode == NL80211_IFTYPE_ADHOC)
  bcntime_cfg |= (bcn_cw << BCN_TCFG_CW_SHIFT);


 bcntime_cfg |= bcn_ifs << BCN_TCFG_IFS;


 rtl92s_phy_set_beacon_hwreg(hw, mac->beacon_interval);
}
