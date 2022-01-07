
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int (* rtllib_ap_sec_type ) (struct rtllib_device*) ;} ;
struct r8192_priv {struct rtllib_device* rtllib; } ;
struct net_device {int dummy; } ;


 int SEC_ALG_TKIP ;
 int SEC_ALG_WEP ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int stub1 (struct rtllib_device*) ;

bool rtl92e_get_nmode_support_by_sec(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 struct rtllib_device *ieee = priv->rtllib;

 if (ieee->rtllib_ap_sec_type &&
    (ieee->rtllib_ap_sec_type(priv->rtllib)&(SEC_ALG_WEP |
         SEC_ALG_TKIP))) {
  return 0;
 } else {
  return 1;
 }
}
