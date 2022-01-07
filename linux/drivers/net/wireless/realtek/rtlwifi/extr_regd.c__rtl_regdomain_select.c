
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_regulatory {int country_code; } ;
struct ieee80211_regdomain {int dummy; } ;
 struct ieee80211_regdomain const rtl_regdom_11 ;
 struct ieee80211_regdomain const rtl_regdom_12_13 ;
 struct ieee80211_regdomain const rtl_regdom_12_13_5g_all ;
 struct ieee80211_regdomain const rtl_regdom_14 ;
 struct ieee80211_regdomain const rtl_regdom_14_60_64 ;
 struct ieee80211_regdomain const rtl_regdom_60_64 ;
 struct ieee80211_regdomain const rtl_regdom_no_midband ;

__attribute__((used)) static const struct ieee80211_regdomain *_rtl_regdomain_select(
      struct rtl_regulatory *reg)
{
 switch (reg->country_code) {
 case 140:
  return &rtl_regdom_no_midband;
 case 137:
  return &rtl_regdom_11;
 case 130:
  return &rtl_regdom_60_64;
 case 141:
 case 132:
 case 139:
 case 136:
  return &rtl_regdom_12_13;
 case 134:
 case 133:
 case 131:
 case 135:
  return &rtl_regdom_14_60_64;
 case 138:
  return &rtl_regdom_14;
 case 129:
 case 128:
  return &rtl_regdom_12_13_5g_all;
 default:
  return &rtl_regdom_no_midband;
 }
}
