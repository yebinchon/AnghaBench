
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int COMP_INIT ;
 int DBG_DMESG ;
 int EOPNOTSUPP ;
 int MSR ;




 int NT_AS_AP ;
 int NT_LINK_AD_HOC ;
 int NT_LINK_AP ;
 int NT_NO_LINK ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int ) ;

int rtl92c_set_network_type(struct ieee80211_hw *hw, enum nl80211_iftype type)
{
 u8 value;
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 switch (type) {
 case 128:
  value = NT_NO_LINK;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG,
    "Set Network type to NO LINK!\n");
  break;
 case 131:
  value = NT_LINK_AD_HOC;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG,
    "Set Network type to Ad Hoc!\n");
  break;
 case 129:
  value = NT_LINK_AP;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG,
    "Set Network type to STA!\n");
  break;
 case 130:
  value = NT_AS_AP;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG,
    "Set Network type to AP!\n");
  break;
 default:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG,
    "Network type %d not supported!\n", type);
  return -EOPNOTSUPP;
 }
 rtl_write_byte(rtlpriv, MSR, value);
 return 0;
}
