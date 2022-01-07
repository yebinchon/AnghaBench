
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_phy {int num_total_rfpath; int* rfreg_chnlval; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_RF ;
 int DBG_LOUD ;


 int RF_CHNLBW ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int pr_err (char*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int,int ,int,int) ;

void rtl92d_phy_rf6052_set_bandwidth(struct ieee80211_hw *hw, u8 bandwidth)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 u8 rfpath;

 switch (bandwidth) {
 case 129:
  for (rfpath = 0; rfpath < rtlphy->num_total_rfpath; rfpath++) {
   rtlphy->rfreg_chnlval[rfpath] = ((rtlphy->rfreg_chnlval
     [rfpath] & 0xfffff3ff) | 0x0400);
   rtl_set_rfreg(hw, rfpath, RF_CHNLBW, BIT(10) |
          BIT(11), 0x01);

   RT_TRACE(rtlpriv, COMP_RF, DBG_LOUD,
     "20M RF 0x18 = 0x%x\n",
     rtlphy->rfreg_chnlval[rfpath]);
  }

  break;
 case 128:
  for (rfpath = 0; rfpath < rtlphy->num_total_rfpath; rfpath++) {
   rtlphy->rfreg_chnlval[rfpath] =
       ((rtlphy->rfreg_chnlval[rfpath] & 0xfffff3ff));
   rtl_set_rfreg(hw, rfpath, RF_CHNLBW, BIT(10) | BIT(11),
          0x00);
   RT_TRACE(rtlpriv, COMP_RF, DBG_LOUD,
     "40M RF 0x18 = 0x%x\n",
     rtlphy->rfreg_chnlval[rfpath]);
  }
  break;
 default:
  pr_err("unknown bandwidth: %#X\n", bandwidth);
  break;
 }
}
