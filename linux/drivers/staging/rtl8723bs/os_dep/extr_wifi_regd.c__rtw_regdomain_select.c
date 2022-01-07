
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_regulatory {int dummy; } ;
struct ieee80211_regdomain {int dummy; } ;


 struct ieee80211_regdomain const rtw_regdom_rd ;

__attribute__((used)) static const struct ieee80211_regdomain *_rtw_regdomain_select(struct
              rtw_regulatory
              *reg)
{
 return &rtw_regdom_rd;
}
