
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {int dummy; } ;


 int RF90_PATH_B ;
 int _rtl8821ae_config_rf_reg (struct ieee80211_hw*,int,int,int ,int) ;

__attribute__((used)) static void _rtl8821ae_config_rf_radio_b(struct ieee80211_hw *hw,
      u32 addr, u32 data)
{
 u32 content = 0x1001;
 u32 maskforphyset = (u32)(content & 0xE000);

 _rtl8821ae_config_rf_reg(hw, addr, data,
     RF90_PATH_B, addr | maskforphyset);
}
