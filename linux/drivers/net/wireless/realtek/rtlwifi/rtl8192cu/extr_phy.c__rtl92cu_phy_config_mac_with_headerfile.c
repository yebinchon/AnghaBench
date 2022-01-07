
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtl_phy {TYPE_1__* hwparam_tables; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int length; int* pdata; } ;


 int COMP_INIT ;
 int DBG_TRACE ;
 size_t MAC_REG ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int ) ;

bool _rtl92cu_phy_config_mac_with_headerfile(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 u32 i;
 u32 arraylength;
 u32 *ptrarray;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE, "Read Rtl819XMACPHY_ARRAY\n");
 arraylength = rtlphy->hwparam_tables[MAC_REG].length ;
 ptrarray = rtlphy->hwparam_tables[MAC_REG].pdata;
 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE, "Img:RTL8192CUMAC_2T_ARRAY\n");
 for (i = 0; i < arraylength; i = i + 2)
  rtl_write_byte(rtlpriv, ptrarray[i], (u8) ptrarray[i + 1]);
 return 1;
}
