
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int WFM5 ;
 int pr_err (char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 scalar_t__ rtl_read_dword (struct rtl_priv*,int ) ;
 int udelay (int) ;

void rtl92s_phy_chk_fwcmd_iodone(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u16 pollingcnt = 10000;
 u32 tmpvalue;


 do {
  udelay(10);

  tmpvalue = rtl_read_dword(rtlpriv, WFM5);
  if (tmpvalue == 0)
   break;
 } while (--pollingcnt);

 if (pollingcnt == 0)
  pr_err("Set FW Cmd fail!!\n");
}
