
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ BASEBAND_CONFIG_PHY_REG ;
 int COMP_SEND ;
 int DBG_TRACE ;
 scalar_t__ HARDWARE_TYPE_RTL8812AE ;
 scalar_t__ HARDWARE_TYPE_RTL8821AE ;
 int* RTL8812AE_PHY_REG_ARRAY_PG ;
 int RTL8812AE_PHY_REG_ARRAY_PGLEN ;
 int* RTL8821AE_PHY_REG_ARRAY_PG ;
 int RTL8821AE_PHY_REG_ARRAY_PGLEN ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int _rtl8821ae_check_condition (struct ieee80211_hw*,int) ;
 int _rtl8821ae_store_tx_power_by_rate (struct ieee80211_hw*,int,int,int,int,int,int) ;
 int mdelay (int) ;
 int msleep (int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int udelay (int) ;

__attribute__((used)) static bool _rtl8821ae_phy_config_bb_with_pgheaderfile(struct ieee80211_hw *hw,
       u8 configtype)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtlpriv);
 int i;
 u32 *array;
 u16 arraylen;
 u32 v1, v2, v3, v4, v5, v6;

 if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE) {
  arraylen = RTL8812AE_PHY_REG_ARRAY_PGLEN;
  array = RTL8812AE_PHY_REG_ARRAY_PG;
 } else {
  arraylen = RTL8821AE_PHY_REG_ARRAY_PGLEN;
  array = RTL8821AE_PHY_REG_ARRAY_PG;
 }

 if (configtype != BASEBAND_CONFIG_PHY_REG) {
  RT_TRACE(rtlpriv, COMP_SEND, DBG_TRACE,
    "configtype != BaseBand_Config_PHY_REG\n");
  return 1;
 }
 for (i = 0; i < arraylen; i += 6) {
  v1 = array[i];
  v2 = array[i+1];
  v3 = array[i+2];
  v4 = array[i+3];
  v5 = array[i+4];
  v6 = array[i+5];

  if (v1 < 0xCDCDCDCD) {
   if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE &&
    (v4 == 0xfe || v4 == 0xffe)) {
    msleep(50);
    continue;
   }

   if (rtlhal->hw_type == HARDWARE_TYPE_RTL8821AE) {
    if (v4 == 0xfe)
     msleep(50);
    else if (v4 == 0xfd)
     mdelay(5);
    else if (v4 == 0xfc)
     mdelay(1);
    else if (v4 == 0xfb)
     udelay(50);
    else if (v4 == 0xfa)
     udelay(5);
    else if (v4 == 0xf9)
     udelay(1);
   }
   _rtl8821ae_store_tx_power_by_rate(hw, v1, v2, v3,
         v4, v5, v6);
   continue;
  } else {

   if (!_rtl8821ae_check_condition(hw, v1)) {
    i += 2;
    v1 = array[i];
    v2 = array[i+1];
    v3 = array[i+2];
    while (v2 != 0xDEAD) {
     i += 3;
     v1 = array[i];
     v2 = array[i+1];
     v3 = array[i+2];
    }
   }
  }
 }

 return 1;
}
