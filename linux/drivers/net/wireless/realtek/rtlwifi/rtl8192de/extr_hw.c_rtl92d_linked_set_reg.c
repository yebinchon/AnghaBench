
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct rtl_phy {size_t current_channel; TYPE_1__* iqk_matrix; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int iqk_done; } ;


 int COMP_INIT ;
 int COMP_SCAN ;
 int DBG_DMESG ;
 int RT_TRACE (struct rtl_priv*,int,int ,char*,size_t) ;
 size_t rtl92d_get_rightchnlplace_for_iqk (size_t) ;
 int rtl92d_phy_iq_calibrate (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl92d_linked_set_reg(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 u8 indexforchannel;
 u8 channel = rtlphy->current_channel;

 indexforchannel = rtl92d_get_rightchnlplace_for_iqk(channel);
 if (!rtlphy->iqk_matrix[indexforchannel].iqk_done) {
  RT_TRACE(rtlpriv, COMP_SCAN | COMP_INIT, DBG_DMESG,
    "Do IQK for channel:%d\n", channel);
  rtl92d_phy_iq_calibrate(hw);
 }
}
