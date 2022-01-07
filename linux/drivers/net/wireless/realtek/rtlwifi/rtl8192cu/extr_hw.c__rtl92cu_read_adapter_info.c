
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ oem_id; } ;
struct rtl_efuse {int txpwr_fromeprom; int eeprom_oemid; int eeprom_did; int eeprom_svid; int eeprom_smid; int autoload_failflag; } ;
struct ieee80211_hw {int dummy; } ;


 int EEPROM_CHANNELPLAN ;




 int EEPROM_CUSTOMER_ID ;
 int EEPROM_DID ;
 int EEPROM_MAC_ADDR ;
 int EEPROM_SMID ;
 int EEPROM_SVID ;
 int EEPROM_VERSION ;
 int EEPROM_VID ;
 int GFP_KERNEL ;
 int HWSET_MAX_SIZE ;
 int RTL8190_EEPROM_ID ;
 scalar_t__ RT_CID_819X_HP ;
 scalar_t__ RT_CID_819X_QMI ;
 scalar_t__ RT_CID_DEFAULT ;
 scalar_t__ RT_CID_TOSHIBA ;
 int _rtl92cu_read_board_type (struct ieee80211_hw*,int *) ;
 int _rtl92cu_read_txpower_info_from_hwpg (struct ieee80211_hw*,int ,int *) ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 scalar_t__ rtl_get_hwinfo (struct ieee80211_hw*,struct rtl_priv*,int ,int *,int*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92cu_read_adapter_info(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 int params[] = {RTL8190_EEPROM_ID, EEPROM_VID, EEPROM_DID,
   EEPROM_SVID, EEPROM_SMID, EEPROM_MAC_ADDR,
   EEPROM_CHANNELPLAN, EEPROM_VERSION, EEPROM_CUSTOMER_ID,
   0};
 u8 *hwinfo;

 hwinfo = kzalloc(HWSET_MAX_SIZE, GFP_KERNEL);
 if (!hwinfo)
  return;

 if (rtl_get_hwinfo(hw, rtlpriv, HWSET_MAX_SIZE, hwinfo, params))
  goto exit;

 _rtl92cu_read_txpower_info_from_hwpg(hw,
        rtlefuse->autoload_failflag, hwinfo);
 _rtl92cu_read_board_type(hw, hwinfo);

 rtlefuse->txpwr_fromeprom = 1;
 if (rtlhal->oem_id == RT_CID_DEFAULT) {
  switch (rtlefuse->eeprom_oemid) {
  case 131:
   if (rtlefuse->eeprom_did == 0x8176) {
    if ((rtlefuse->eeprom_svid == 0x103C &&
         rtlefuse->eeprom_smid == 0x1629))
     rtlhal->oem_id = RT_CID_819X_HP;
    else
     rtlhal->oem_id = RT_CID_DEFAULT;
   } else {
    rtlhal->oem_id = RT_CID_DEFAULT;
   }
   break;
  case 129:
   rtlhal->oem_id = RT_CID_TOSHIBA;
   break;
  case 130:
   rtlhal->oem_id = RT_CID_819X_QMI;
   break;
  case 128:
  default:
   rtlhal->oem_id = RT_CID_DEFAULT;
   break;
  }
 }
exit:
 kfree(hwinfo);
}
