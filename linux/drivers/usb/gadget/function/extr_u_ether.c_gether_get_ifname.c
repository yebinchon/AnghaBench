
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netdev_name (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int scnprintf (char*,int,char*,int ) ;

int gether_get_ifname(struct net_device *net, char *name, int len)
{
 int ret;

 rtnl_lock();
 ret = scnprintf(name, len, "%s\n", netdev_name(net));
 rtnl_unlock();
 return ret;
}
