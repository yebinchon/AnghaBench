
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_hal {int interface; } ;
struct rtl_efuse {int board_type; } ;
struct ieee80211_hw {int dummy; } ;


 struct rtl_efuse* rtl_efuse (int ) ;
 struct rtl_hal* rtl_hal (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static bool _check_condition(struct ieee80211_hw *hw,
        const u32 condition)
{
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 u32 _board = rtlefuse->board_type;
 u32 _interface = rtlhal->interface;
 u32 _platform = 0x08;
 u32 cond = condition;

 if (condition == 0xCDCDCDCD)
  return 1;

 cond = condition & 0xFF;
 if ((_board != cond) && (cond != 0xFF))
  return 0;

 cond = condition & 0xFF00;
 cond = cond >> 8;
 if ((_interface & cond) == 0 && cond != 0x07)
  return 0;

 cond = condition & 0xFF0000;
 cond = cond >> 16;
 if ((_platform & cond) == 0 && cond != 0x0F)
  return 0;

 return 1;
}
