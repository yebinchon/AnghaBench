
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 scalar_t__ COND_ELSE ;
 scalar_t__ COND_ENDIF ;
 scalar_t__ _rtl8723be_check_positive (struct ieee80211_hw*,int,int) ;

__attribute__((used)) static bool rtl8723be_phy_config_with_headerfile(struct ieee80211_hw *hw,
       u32 *array_table,
       u16 arraylen,
  void (*set_reg)(struct ieee80211_hw *hw, u32 regaddr, u32 data))
{



 int i = 0;
 u8 cond;
 bool matched = 1, skipped = 0;

 while ((i + 1) < arraylen) {
  u32 v1 = array_table[i];
  u32 v2 = array_table[i + 1];

  if (v1 & (BIT(31) | BIT(30))) {
   if (v1 & BIT(31)) {
    cond = (u8)((v1 & (BIT(29) | BIT(28))) >> 28);
    if (cond == 3) {
     matched = 1;
     skipped = 0;
    } else if (cond == 2) {
     matched = skipped ? 0 : 1;
    } else {
     if (skipped) {
      matched = 0;
     } else {
      if (_rtl8723be_check_positive(
        hw, v1, v2)) {
       matched = 1;
       skipped = 1;
      } else {
       matched = 0;
       skipped = 0;
      }
     }
    }
   } else if (v1 & BIT(30)) {

   }
  } else {
   if (matched)
    set_reg(hw, v1, v2);
  }
  i = i + 2;
 }

 return 1;
}
