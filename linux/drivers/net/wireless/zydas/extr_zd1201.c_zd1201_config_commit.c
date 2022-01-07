
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int dummy; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int dummy; } ;


 struct zd1201* netdev_priv (struct net_device*) ;
 int zd1201_mac_reset (struct zd1201*) ;

__attribute__((used)) static int zd1201_config_commit(struct net_device *dev,
    struct iw_request_info *info, struct iw_point *data, char *essid)
{
 struct zd1201 *zd = netdev_priv(dev);

 return zd1201_mac_reset(zd);
}
