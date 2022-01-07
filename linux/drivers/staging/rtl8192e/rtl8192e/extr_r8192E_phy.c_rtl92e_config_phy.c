
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int rf_chip; } ;
struct net_device {int dummy; } ;






 int netdev_err (struct net_device*,char*) ;
 int rtl92e_config_rf (struct net_device*) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

bool rtl92e_config_phy(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 bool rtStatus = 1;

 switch (priv->rf_chip) {
 case 131:
  break;
 case 130:
  rtStatus = rtl92e_config_rf(dev);
  break;

 case 129:
  break;
 case 128:
  break;

 default:
  netdev_err(dev, "Invalid RF Chip ID.\n");
  break;
 }
 return rtStatus;
}
