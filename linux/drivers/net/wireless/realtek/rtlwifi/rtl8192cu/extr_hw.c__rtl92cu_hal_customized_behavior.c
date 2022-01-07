
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int led_opendrain; } ;
struct rtl_priv {TYPE_1__ ledctl; } ;
struct rtl_hal {int oem_id; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_INIT ;
 int DBG_DMESG ;







 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92cu_hal_customized_behavior(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 switch (rtlhal->oem_id) {
 case 133:
  rtlpriv->ledctl.led_opendrain = 1;
  break;
 case 132:
 case 130:
 case 129:
 case 131:
 case 134:
 case 128:
 default:
  break;
 }
 RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG, "RT Customized ID: 0x%02X\n",
   rtlhal->oem_id);
}
