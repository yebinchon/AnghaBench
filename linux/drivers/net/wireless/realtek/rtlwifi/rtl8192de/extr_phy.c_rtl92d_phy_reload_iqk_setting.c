
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct rtl_hal {int version; int load_imrandiqk_setting_for2g; } ;
struct rtl_phy {int need_iqk; TYPE_1__* iqk_matrix; } ;
struct rtl_priv {struct rtl_hal rtlhal; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__** value; int iqk_done; } ;


 int COMP_CMD ;
 int COMP_INIT ;
 int COMP_SCAN ;
 int DBG_LOUD ;
 scalar_t__ IS_92D_SINGLEPHY (int ) ;
 int RT_TRACE (struct rtl_priv*,int,int ,char*,...) ;
 int _rtl92d_phy_patha_fill_iqk_matrix (struct ieee80211_hw*,int,scalar_t__**,int ,int) ;
 int _rtl92d_phy_pathb_fill_iqk_matrix (struct ieee80211_hw*,int,scalar_t__**,int ,int) ;
 size_t rtl92d_get_rightchnlplace_for_iqk (size_t) ;
 int rtl92d_phy_iq_calibrate (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl92d_phy_reload_iqk_setting(struct ieee80211_hw *hw, u8 channel)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_hal *rtlhal = &(rtlpriv->rtlhal);
 u8 indexforchannel;

 RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD, "channel %d\n", channel);

 indexforchannel = rtl92d_get_rightchnlplace_for_iqk(channel);
 RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD, "indexforchannel %d done %d\n",
   indexforchannel,
   rtlphy->iqk_matrix[indexforchannel].iqk_done);
 if (0 && !rtlphy->iqk_matrix[indexforchannel].iqk_done &&
  rtlphy->need_iqk) {

  RT_TRACE(rtlpriv, COMP_SCAN | COMP_INIT, DBG_LOUD,
    "Do IQK Matrix reg for channel:%d....\n", channel);
  rtl92d_phy_iq_calibrate(hw);
 } else {


  if (((!rtlhal->load_imrandiqk_setting_for2g) &&
      indexforchannel == 0) || indexforchannel > 0) {
   RT_TRACE(rtlpriv, COMP_SCAN, DBG_LOUD,
     "Just Read IQK Matrix reg for channel:%d....\n",
     channel);
   if ((rtlphy->iqk_matrix[indexforchannel].
        value[0] != ((void*)0))
                        )
    _rtl92d_phy_patha_fill_iqk_matrix(hw, 1,
     rtlphy->iqk_matrix[
     indexforchannel].value, 0,
     (rtlphy->iqk_matrix[
     indexforchannel].value[0][2] == 0));
   if (IS_92D_SINGLEPHY(rtlhal->version)) {
    if ((rtlphy->iqk_matrix[
     indexforchannel].value[0][4] != 0)
                         )
     _rtl92d_phy_pathb_fill_iqk_matrix(hw,
      1,
      rtlphy->iqk_matrix[
      indexforchannel].value, 0,
      (rtlphy->iqk_matrix[
      indexforchannel].value[0][6]
      == 0));
   }
  }
 }
 rtlphy->need_iqk = 0;
 RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD, "<====\n");
}
