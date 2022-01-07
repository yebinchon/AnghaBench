
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;



 int RF90_PATH_A ;
 int RF90_PATH_B ;
 int RF_CHNLBW ;
 int pr_err (char*,int) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int ,int ,int,int) ;

void rtl8821ae_phy_rf6052_set_bandwidth(struct ieee80211_hw *hw, u8 bandwidth)
{
 switch (bandwidth) {
 case 130:
  rtl_set_rfreg(hw, RF90_PATH_A, RF_CHNLBW, BIT(11)|BIT(10), 3);
  rtl_set_rfreg(hw, RF90_PATH_B, RF_CHNLBW, BIT(11)|BIT(10), 3);
  break;
 case 129:
  rtl_set_rfreg(hw, RF90_PATH_A, RF_CHNLBW, BIT(11)|BIT(10), 1);
  rtl_set_rfreg(hw, RF90_PATH_B, RF_CHNLBW, BIT(11)|BIT(10), 1);
  break;
 case 128:
  rtl_set_rfreg(hw, RF90_PATH_A, RF_CHNLBW, BIT(11)|BIT(10), 0);
  rtl_set_rfreg(hw, RF90_PATH_B, RF_CHNLBW, BIT(11)|BIT(10), 0);
  break;
 default:
  pr_err("unknown bandwidth: %#X\n", bandwidth);
  break;
 }
}
