
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_phy {int* rfreg_chnlval; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;




 int RF90_PATH_A ;
 int RFREG_OFFSET_MASK ;
 int RF_CHNLBW ;
 int pr_err (char*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int ,int ,int ,int) ;

void rtl92cu_phy_rf6052_set_bandwidth(struct ieee80211_hw *hw, u8 bandwidth)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);

 switch (bandwidth) {
 case 129:
  rtlphy->rfreg_chnlval[0] = ((rtlphy->rfreg_chnlval[0] &
          0xfffff3ff) | 0x0400);
  rtl_set_rfreg(hw, RF90_PATH_A, RF_CHNLBW, RFREG_OFFSET_MASK,
         rtlphy->rfreg_chnlval[0]);
  break;
 case 128:
  rtlphy->rfreg_chnlval[0] = ((rtlphy->rfreg_chnlval[0] &
          0xfffff3ff));
  rtl_set_rfreg(hw, RF90_PATH_A, RF_CHNLBW, RFREG_OFFSET_MASK,
         rtlphy->rfreg_chnlval[0]);
  break;
 default:
  pr_err("unknown bandwidth: %#X\n", bandwidth);
  break;
 }
}
