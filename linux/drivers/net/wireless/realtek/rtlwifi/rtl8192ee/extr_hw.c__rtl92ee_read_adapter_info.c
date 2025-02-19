
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int btcoexist; } ;
struct TYPE_4__ {TYPE_1__ btc_info; } ;
struct rtl_priv {TYPE_2__ btcoexist; } ;
struct rtl_hal {int board_type; scalar_t__ oem_id; } ;
struct rtl_efuse {int eeprom_oemid; int board_type; int crystalcap; int eeprom_did; int eeprom_svid; int eeprom_smid; scalar_t__ antenna_div_cfg; int antenna_div_type; int autoload_failflag; int eeprom_channelplan; int channel_plan; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_INIT ;
 int COUNTRY_CODE_WORLD_WIDE_13 ;
 int DBG_LOUD ;
 int EEPROM_CHANNELPLAN ;

 int EEPROM_CUSTOMER_ID ;
 int EEPROM_DID ;
 int EEPROM_MAC_ADDR ;
 size_t EEPROM_RF_BOARD_OPTION_92E ;
 int EEPROM_SMID ;
 int EEPROM_SVID ;
 int EEPROM_VERSION ;
 int EEPROM_VID ;
 size_t EEPROM_XTAL_92E ;
 int GFP_KERNEL ;
 int HWSET_MAX_SIZE ;
 int NO_ANTDIV ;
 int RTL8192E_EEPROM_ID ;
 scalar_t__ RT_CID_819X_LENOVO ;
 scalar_t__ RT_CID_DEFAULT ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int _rtl92ee_read_txpower_info_from_hwpg (struct ieee80211_hw*,int ,int*) ;
 int kfree (int*) ;
 int* kzalloc (int ,int ) ;
 int rtl92ee_read_bt_coexist_info_from_hwpg (struct ieee80211_hw*,int ,int*) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 scalar_t__ rtl_get_hwinfo (struct ieee80211_hw*,struct rtl_priv*,int ,int*,int*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92ee_read_adapter_info(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 int params[] = {RTL8192E_EEPROM_ID, EEPROM_VID, EEPROM_DID,
   EEPROM_SVID, EEPROM_SMID, EEPROM_MAC_ADDR,
   EEPROM_CHANNELPLAN, EEPROM_VERSION, EEPROM_CUSTOMER_ID,
   COUNTRY_CODE_WORLD_WIDE_13};
 u8 *hwinfo;

 hwinfo = kzalloc(HWSET_MAX_SIZE, GFP_KERNEL);
 if (!hwinfo)
  return;

 if (rtl_get_hwinfo(hw, rtlpriv, HWSET_MAX_SIZE, hwinfo, params))
  goto exit;

 if (rtlefuse->eeprom_oemid == 0xFF)
  rtlefuse->eeprom_oemid = 0;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
   "EEPROM Customer ID: 0x%2x\n", rtlefuse->eeprom_oemid);

 rtlefuse->channel_plan = rtlefuse->eeprom_channelplan;

 _rtl92ee_read_txpower_info_from_hwpg(hw, rtlefuse->autoload_failflag,
          hwinfo);

 rtl92ee_read_bt_coexist_info_from_hwpg(hw, rtlefuse->autoload_failflag,
            hwinfo);


 rtlefuse->board_type = (((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_92E])
    & 0xE0) >> 5);
 if ((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_92E]) == 0xFF)
  rtlefuse->board_type = 0;

 if (rtlpriv->btcoexist.btc_info.btcoexist == 1)
  rtlefuse->board_type |= BIT(2);

 rtlhal->board_type = rtlefuse->board_type;
 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
   "board_type = 0x%x\n", rtlefuse->board_type);

 rtlefuse->crystalcap = hwinfo[EEPROM_XTAL_92E];
 if (hwinfo[EEPROM_XTAL_92E] == 0xFF)
  rtlefuse->crystalcap = 0x20;


 rtlefuse->antenna_div_type = NO_ANTDIV;
 rtlefuse->antenna_div_cfg = 0;

 if (rtlhal->oem_id == RT_CID_DEFAULT) {
  switch (rtlefuse->eeprom_oemid) {
  case 128:
   if (rtlefuse->eeprom_did == 0x818B) {
    if ((rtlefuse->eeprom_svid == 0x10EC) &&
        (rtlefuse->eeprom_smid == 0x001B))
     rtlhal->oem_id = RT_CID_819X_LENOVO;
   } else {
    rtlhal->oem_id = RT_CID_DEFAULT;
   }
   break;
  default:
   rtlhal->oem_id = RT_CID_DEFAULT;
   break;
  }
 }
exit:
 kfree(hwinfo);
}
