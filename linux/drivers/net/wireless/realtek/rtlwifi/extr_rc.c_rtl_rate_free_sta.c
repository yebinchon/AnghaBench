
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_rate_priv {int dummy; } ;
struct ieee80211_sta {int dummy; } ;


 int kfree (struct rtl_rate_priv*) ;

__attribute__((used)) static void rtl_rate_free_sta(void *rtlpriv,
         struct ieee80211_sta *sta, void *priv_sta)
{
 struct rtl_rate_priv *rate_priv = priv_sta;

 kfree(rate_priv);
}
