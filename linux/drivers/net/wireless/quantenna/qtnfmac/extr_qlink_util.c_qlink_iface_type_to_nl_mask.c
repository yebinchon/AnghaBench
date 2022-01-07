
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int BIT (int ) ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_AP_VLAN ;
 int NL80211_IFTYPE_MONITOR ;
 int NL80211_IFTYPE_STATION ;
 int NL80211_IFTYPE_WDS ;







u16 qlink_iface_type_to_nl_mask(u16 qlink_type)
{
 u16 result = 0;

 switch (qlink_type) {
 case 132:
  result |= BIT(NL80211_IFTYPE_AP);
  break;
 case 129:
  result |= BIT(NL80211_IFTYPE_STATION);
  break;
 case 133:
  result |= BIT(NL80211_IFTYPE_ADHOC);
  break;
 case 130:
  result |= BIT(NL80211_IFTYPE_MONITOR);
  break;
 case 128:
  result |= BIT(NL80211_IFTYPE_WDS);
  break;
 case 131:
  result |= BIT(NL80211_IFTYPE_AP_VLAN);
  break;
 }

 return result;
}
