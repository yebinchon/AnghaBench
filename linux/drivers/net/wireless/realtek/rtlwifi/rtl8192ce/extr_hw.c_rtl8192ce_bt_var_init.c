
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg_bt_iso; int bt_ant_isolation; int eeprom_bt_ant_isol; int reg_bt_sco; int bt_rssi_state; scalar_t__ bt_edca_dl; scalar_t__ bt_edca_ul; int bt_service; scalar_t__ bt_coexistence; int eeprom_bt_radio_shared; int bt_radio_shared_type; int eeprom_bt_type; int bt_coexist_type; int eeprom_bt_ant_num; int bt_ant_num; scalar_t__ eeprom_bt_coexist; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;


 int BT_BUSY ;
 int BT_IDLE ;
 int BT_OTHERBUSY ;
 int BT_OTHER_ACTION ;
 int BT_SCO ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8192ce_bt_var_init(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtlpriv->btcoexist.bt_coexistence =
   rtlpriv->btcoexist.eeprom_bt_coexist;
 rtlpriv->btcoexist.bt_ant_num =
   rtlpriv->btcoexist.eeprom_bt_ant_num;
 rtlpriv->btcoexist.bt_coexist_type =
   rtlpriv->btcoexist.eeprom_bt_type;

 if (rtlpriv->btcoexist.reg_bt_iso == 2)
  rtlpriv->btcoexist.bt_ant_isolation =
   rtlpriv->btcoexist.eeprom_bt_ant_isol;
 else
  rtlpriv->btcoexist.bt_ant_isolation =
   rtlpriv->btcoexist.reg_bt_iso;

 rtlpriv->btcoexist.bt_radio_shared_type =
   rtlpriv->btcoexist.eeprom_bt_radio_shared;

 if (rtlpriv->btcoexist.bt_coexistence) {
  if (rtlpriv->btcoexist.reg_bt_sco == 1)
   rtlpriv->btcoexist.bt_service = BT_OTHER_ACTION;
  else if (rtlpriv->btcoexist.reg_bt_sco == 2)
   rtlpriv->btcoexist.bt_service = BT_SCO;
  else if (rtlpriv->btcoexist.reg_bt_sco == 4)
   rtlpriv->btcoexist.bt_service = BT_BUSY;
  else if (rtlpriv->btcoexist.reg_bt_sco == 5)
   rtlpriv->btcoexist.bt_service = BT_OTHERBUSY;
  else
   rtlpriv->btcoexist.bt_service = BT_IDLE;

  rtlpriv->btcoexist.bt_edca_ul = 0;
  rtlpriv->btcoexist.bt_edca_dl = 0;
  rtlpriv->btcoexist.bt_rssi_state = 0xff;
 }
}
