
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int EIO ;
 scalar_t__ FWDL_CHKSUM_RPT ;
 scalar_t__ FW_8192D_POLLING_TIMEOUT_COUNT ;
 scalar_t__ MCUFWDL_RDY ;
 int REG_MCUFWDL ;
 int pr_err (char*,scalar_t__) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 scalar_t__ rtl_read_dword (struct rtl_priv*,int ) ;
 int rtl_write_dword (struct rtl_priv*,int ,scalar_t__) ;

__attribute__((used)) static int _rtl92d_fw_free_to_go(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 counter = 0;
 u32 value32;

 do {
  value32 = rtl_read_dword(rtlpriv, REG_MCUFWDL);
 } while ((counter++ < FW_8192D_POLLING_TIMEOUT_COUNT) &&
   (!(value32 & FWDL_CHKSUM_RPT)));
 if (counter >= FW_8192D_POLLING_TIMEOUT_COUNT) {
  pr_err("chksum report fail! REG_MCUFWDL:0x%08x\n",
         value32);
  return -EIO;
 }
 value32 = rtl_read_dword(rtlpriv, REG_MCUFWDL);
 value32 |= MCUFWDL_RDY;
 rtl_write_dword(rtlpriv, REG_MCUFWDL, value32);
 return 0;
}
