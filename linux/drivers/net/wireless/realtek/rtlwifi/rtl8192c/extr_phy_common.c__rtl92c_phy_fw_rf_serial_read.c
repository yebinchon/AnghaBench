
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int WARN_ONCE (int,char*) ;

u32 _rtl92c_phy_fw_rf_serial_read(struct ieee80211_hw *hw,
      enum radio_path rfpath, u32 offset)
{
 WARN_ONCE(1, "rtl8192c-common: _rtl92c_phy_fw_rf_serial_read deprecated!\n");
 return 0;
}
