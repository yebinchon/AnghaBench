
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hw {int dummy; } ;
__attribute__((used)) static u8 _rtl92ee_mrate_idx_to_arfr_id(struct ieee80211_hw *hw, u8 rate_index)
{
 u8 ret = 0;

 switch (rate_index) {
 case 128:
  ret = 0;
  break;
 case 131:
 case 129:
  ret = 4;
  break;
 case 130:
  ret = 2;
  break;
 case 132:
  ret = 6;
  break;
 case 133:
  ret = 7;
  break;
 case 134:
  ret = 8;
  break;
 default:
  ret = 0;
  break;
 }
 return ret;
}
