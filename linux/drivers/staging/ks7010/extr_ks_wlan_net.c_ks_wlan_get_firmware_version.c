
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks_wlan_private {scalar_t__ version_size; int firmware_version; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {scalar_t__ length; } ;


 struct ks_wlan_private* netdev_priv (struct net_device*) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static int ks_wlan_get_firmware_version(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_point *dwrq, char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 strcpy(extra, priv->firmware_version);
 dwrq->length = priv->version_size + 1;
 return 0;
}
