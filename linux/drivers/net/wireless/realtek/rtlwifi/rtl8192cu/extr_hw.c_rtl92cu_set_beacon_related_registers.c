
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_mac {int beacon_interval; scalar_t__ opmode; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_BEACON ;
 int COMP_INIT ;
 int DBG_LOUD ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int REG_ATIMWND ;
 int REG_BCN_INTERVAL ;
 int REG_RXTSF_OFFSET_CCK ;
 int REG_RXTSF_OFFSET_OFDM ;
 int REG_SLOT ;
 int REG_TCR ;
 int RT_TRACE (struct rtl_priv*,int,int ,char*,int ) ;
 int TSFRST ;
 int _beacon_function_enable (struct ieee80211_hw*) ;
 int _rtl92cu_init_beacon_parameters (struct ieee80211_hw*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int rtl_write_dword (struct rtl_priv*,int ,int ) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

void rtl92cu_set_beacon_related_registers(struct ieee80211_hw *hw)
{

 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 u16 bcn_interval, atim_window;
 u32 value32;

 bcn_interval = mac->beacon_interval;
 atim_window = 2;
 rtl_write_word(rtlpriv, REG_ATIMWND, atim_window);
 rtl_write_word(rtlpriv, REG_BCN_INTERVAL, bcn_interval);
 _rtl92cu_init_beacon_parameters(hw);
 rtl_write_byte(rtlpriv, REG_SLOT, 0x09);







 value32 = rtl_read_dword(rtlpriv, REG_TCR);
 value32 &= ~TSFRST;
 rtl_write_dword(rtlpriv, REG_TCR, value32);
 value32 |= TSFRST;
 rtl_write_dword(rtlpriv, REG_TCR, value32);
 RT_TRACE(rtlpriv, COMP_INIT|COMP_BEACON, DBG_LOUD,
   "SetBeaconRelatedRegisters8192CUsb(): Set TCR(%x)\n",
   value32);


 if ((mac->opmode == NL80211_IFTYPE_ADHOC) ||
     (mac->opmode == NL80211_IFTYPE_MESH_POINT) ||
     (mac->opmode == NL80211_IFTYPE_AP)) {
  rtl_write_byte(rtlpriv, REG_RXTSF_OFFSET_CCK, 0x50);
  rtl_write_byte(rtlpriv, REG_RXTSF_OFFSET_OFDM, 0x50);
 }
 _beacon_function_enable(hw);
}
