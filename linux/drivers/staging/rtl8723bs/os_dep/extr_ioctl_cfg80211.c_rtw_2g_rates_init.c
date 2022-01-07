
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_rate {int dummy; } ;


 int RTW_G_RATES_NUM ;
 int memcpy (struct ieee80211_rate*,int ,int) ;
 int rtw_g_rates ;

__attribute__((used)) static void rtw_2g_rates_init(struct ieee80211_rate *rates)
{
 memcpy(rates, rtw_g_rates,
  sizeof(struct ieee80211_rate)*RTW_G_RATES_NUM
 );
}
