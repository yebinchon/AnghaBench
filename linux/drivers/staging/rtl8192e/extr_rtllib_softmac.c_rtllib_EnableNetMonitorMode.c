
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int (* AllowAllDestAddrHandler ) (struct net_device*,int,int) ;} ;
struct net_device {int dummy; } ;


 int netdev_info (struct net_device*,char*) ;
 struct rtllib_device* netdev_priv_rsl (struct net_device*) ;
 int stub1 (struct net_device*,int,int) ;

void rtllib_EnableNetMonitorMode(struct net_device *dev,
  bool bInitState)
{
 struct rtllib_device *ieee = netdev_priv_rsl(dev);

 netdev_info(dev, "========>Enter Monitor Mode\n");

 ieee->AllowAllDestAddrHandler(dev, 1, !bInitState);
}
