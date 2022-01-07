
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int bHalfWirelessN24GMode; } ;
struct r8192_priv {struct rtllib_device* rtllib; } ;
struct net_device {int dummy; } ;


 struct r8192_priv* rtllib_priv (struct net_device*) ;

bool rtl92e_is_halfn_supported_by_ap(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 struct rtllib_device *ieee = priv->rtllib;

 return ieee->bHalfWirelessN24GMode;
}
