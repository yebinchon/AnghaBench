
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ macphymode; } ;
struct rtl_priv {TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_INIT ;
 int DBG_TRACE ;
 int MAC_2T_ARRAYLENGTH ;
 int REG_MAX_AGGR_NUM ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 scalar_t__ SINGLEMAC_SINGLEPHY ;
 int* rtl8192de_mac_2tarray ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;

bool rtl92d_phy_mac_config(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 i;
 u32 arraylength;
 u32 *ptrarray;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE, "Read Rtl819XMACPHY_Array\n");
 arraylength = MAC_2T_ARRAYLENGTH;
 ptrarray = rtl8192de_mac_2tarray;
 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE, "Img:Rtl819XMAC_Array\n");
 for (i = 0; i < arraylength; i = i + 2)
  rtl_write_byte(rtlpriv, ptrarray[i], (u8) ptrarray[i + 1]);
 if (rtlpriv->rtlhal.macphymode == SINGLEMAC_SINGLEPHY) {




  rtl_write_byte(rtlpriv, REG_MAX_AGGR_NUM, 0x0B);
 } else {

  rtl_write_byte(rtlpriv, REG_MAX_AGGR_NUM, 0x07);
 }
 return 1;
}
