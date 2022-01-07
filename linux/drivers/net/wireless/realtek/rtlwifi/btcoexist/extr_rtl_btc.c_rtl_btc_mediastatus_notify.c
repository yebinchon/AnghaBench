
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct btc_coexist {int dummy; } ;
typedef enum rt_media_status { ____Placeholder_rt_media_status } rt_media_status ;


 int exhalbtc_mediastatus_notify (struct btc_coexist*,int) ;
 struct btc_coexist* rtl_btc_coexist (struct rtl_priv*) ;

void rtl_btc_mediastatus_notify(struct rtl_priv *rtlpriv,
    enum rt_media_status mstatus)
{
 struct btc_coexist *btcoexist = rtl_btc_coexist(rtlpriv);

 if (!btcoexist)
  return;

 exhalbtc_mediastatus_notify(btcoexist, mstatus);
}
