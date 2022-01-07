
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ interfaceindex; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_FW ;
 int DBG_DMESG ;
 int FW_MAC0_READY ;
 int FW_MAC1_READY ;
 int MAC0_READY ;
 int MAC1_READY ;
 scalar_t__ POLLING_READY_TIMEOUT_COUNT ;
 int REG_MCUFWDL ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int _rtl92d_fw_init(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u32 counter;

 RT_TRACE(rtlpriv, COMP_FW, DBG_DMESG, "FW already have download\n");

 counter = 0;
 do {
  if (rtlhal->interfaceindex == 0) {
   if (rtl_read_byte(rtlpriv, FW_MAC0_READY) &
       MAC0_READY) {
    RT_TRACE(rtlpriv, COMP_FW, DBG_DMESG,
      "Polling FW ready success!! REG_MCUFWDL: 0x%x\n",
      rtl_read_byte(rtlpriv,
             FW_MAC0_READY));
    return 0;
   }
   udelay(5);
  } else {
   if (rtl_read_byte(rtlpriv, FW_MAC1_READY) &
       MAC1_READY) {
    RT_TRACE(rtlpriv, COMP_FW, DBG_DMESG,
      "Polling FW ready success!! REG_MCUFWDL: 0x%x\n",
      rtl_read_byte(rtlpriv,
             FW_MAC1_READY));
    return 0;
   }
   udelay(5);
  }
 } while (counter++ < POLLING_READY_TIMEOUT_COUNT);

 if (rtlhal->interfaceindex == 0) {
  RT_TRACE(rtlpriv, COMP_FW, DBG_DMESG,
    "Polling FW ready fail!! MAC0 FW init not ready: 0x%x\n",
    rtl_read_byte(rtlpriv, FW_MAC0_READY));
 } else {
  RT_TRACE(rtlpriv, COMP_FW, DBG_DMESG,
    "Polling FW ready fail!! MAC1 FW init not ready: 0x%x\n",
    rtl_read_byte(rtlpriv, FW_MAC1_READY));
 }
 RT_TRACE(rtlpriv, COMP_FW, DBG_DMESG,
   "Polling FW ready fail!! REG_MCUFWDL:0x%08x\n",
   rtl_read_dword(rtlpriv, REG_MCUFWDL));
 return -1;
}
