
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_hal {scalar_t__ interfaceindex; int bandset; } ;
struct rtl_efuse {int txpwr_fromeprom; void* channel_plan; int autoload_failflag; int * dev_addr; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,int *) ;} ;





 int COMP_INIT ;
 void* COUNTRY_CODE_FCC ;
 void* COUNTRY_CODE_TELEC ;
 int COUNTRY_CODE_WORLD_WIDE_13 ;
 int DBG_DMESG ;
 int EEPROM_CHANNEL_PLAN ;
 int EEPROM_CUSTOMER_ID ;
 int EEPROM_DID ;
 int EEPROM_MAC_ADDR_MAC0_92D ;
 int EEPROM_MAC_ADDR_MAC1_92D ;
 int EEPROM_SMID ;
 int EEPROM_SVID ;
 int EEPROM_VERSION ;
 int EEPROM_VID ;
 int GFP_KERNEL ;
 int HWSET_MAX_SIZE ;
 int HW_VAR_ETHER_ADDR ;
 int RTL8190_EEPROM_ID ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int *) ;
 int _rtl92de_efuse_update_chip_version (struct ieee80211_hw*) ;
 int _rtl92de_read_macphymode_and_bandtype (struct ieee80211_hw*,int *) ;
 int _rtl92de_read_txpower_info (struct ieee80211_hw*,int ,int *) ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 scalar_t__ rtl_get_hwinfo (struct ieee80211_hw*,struct rtl_priv*,int ,int *,int*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int ,int *) ;

__attribute__((used)) static void _rtl92de_read_adapter_info(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 int params[] = {RTL8190_EEPROM_ID, EEPROM_VID, EEPROM_DID,
   EEPROM_SVID, EEPROM_SMID, EEPROM_MAC_ADDR_MAC0_92D,
   EEPROM_CHANNEL_PLAN, EEPROM_VERSION, EEPROM_CUSTOMER_ID,
   COUNTRY_CODE_WORLD_WIDE_13};
 int i;
 u16 usvalue;
 u8 *hwinfo;

 hwinfo = kzalloc(HWSET_MAX_SIZE, GFP_KERNEL);
 if (!hwinfo)
  return;

 if (rtl_get_hwinfo(hw, rtlpriv, HWSET_MAX_SIZE, hwinfo, params))
  goto exit;

 _rtl92de_efuse_update_chip_version(hw);
 _rtl92de_read_macphymode_and_bandtype(hw, hwinfo);


 if (rtlhal->interfaceindex != 0) {
  for (i = 0; i < 6; i += 2) {
   usvalue = *(u16 *)&hwinfo[EEPROM_MAC_ADDR_MAC1_92D + i];
   *((u16 *) (&rtlefuse->dev_addr[i])) = usvalue;
  }
 }
 rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_ETHER_ADDR,
          rtlefuse->dev_addr);
 RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG, "%pM\n", rtlefuse->dev_addr);
 _rtl92de_read_txpower_info(hw, rtlefuse->autoload_failflag, hwinfo);


 switch (rtlhal->bandset) {
 case 130:
  rtlefuse->channel_plan = COUNTRY_CODE_TELEC;
  break;
 case 129:
  rtlefuse->channel_plan = COUNTRY_CODE_FCC;
  break;
 case 128:
  rtlefuse->channel_plan = COUNTRY_CODE_FCC;
  break;
 default:
  rtlefuse->channel_plan = COUNTRY_CODE_FCC;
  break;
 }
 rtlefuse->txpwr_fromeprom = 1;
exit:
 kfree(hwinfo);
}
