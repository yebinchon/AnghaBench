
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct ks_wlan_private {scalar_t__ need_commit; } ;
struct iw_request_info {int dummy; } ;


 int ks_wlan_setup_parameter (struct ks_wlan_private*,scalar_t__) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_config_commit(struct net_device *dev,
     struct iw_request_info *info,
     union iwreq_data *zwrq,
     char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 if (!priv->need_commit)
  return 0;

 ks_wlan_setup_parameter(priv, priv->need_commit);
 priv->need_commit = 0;
 return 0;
}
