
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct rtl_phy {void* framesync; scalar_t__ framesync_c34; void** default_initialgain; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_INIT ;
 int DBG_TRACE ;
 int MASKBYTE0 ;
 int MASKDWORD ;
 int ROFDM0_RXDETECTOR2 ;
 int ROFDM0_RXDETECTOR3 ;
 int ROFDM0_XAAGCCORE1 ;
 int ROFDM0_XBAGCCORE1 ;
 int ROFDM0_XCAGCCORE1 ;
 int ROFDM0_XDAGCCORE1 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ,void*,...) ;
 scalar_t__ rtl_get_bbreg (struct ieee80211_hw*,int ,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl92d_phy_get_hw_reg_originalvalue(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);

 rtlphy->default_initialgain[0] =
     (u8) rtl_get_bbreg(hw, ROFDM0_XAAGCCORE1, MASKBYTE0);
 rtlphy->default_initialgain[1] =
     (u8) rtl_get_bbreg(hw, ROFDM0_XBAGCCORE1, MASKBYTE0);
 rtlphy->default_initialgain[2] =
     (u8) rtl_get_bbreg(hw, ROFDM0_XCAGCCORE1, MASKBYTE0);
 rtlphy->default_initialgain[3] =
     (u8) rtl_get_bbreg(hw, ROFDM0_XDAGCCORE1, MASKBYTE0);
 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
   "Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x\n",
   rtlphy->default_initialgain[0],
   rtlphy->default_initialgain[1],
   rtlphy->default_initialgain[2],
   rtlphy->default_initialgain[3]);
 rtlphy->framesync = (u8)rtl_get_bbreg(hw, ROFDM0_RXDETECTOR3,
           MASKBYTE0);
 rtlphy->framesync_c34 = rtl_get_bbreg(hw, ROFDM0_RXDETECTOR2,
           MASKDWORD);
 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
   "Default framesync (0x%x) = 0x%x\n",
   ROFDM0_RXDETECTOR3, rtlphy->framesync);
}
