
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int NET_NAME_UNKNOWN ;
 struct net_device* alloc_netdev (int ,char*,int ,int ) ;
 int free_netdev (struct net_device*) ;
 int mon_setup ;
 int register_netdev (struct net_device*) ;

struct net_device *rtl88eu_mon_init(void)
{
 struct net_device *dev;
 int err;

 dev = alloc_netdev(0, "mon%d", NET_NAME_UNKNOWN, mon_setup);
 if (!dev)
  goto fail;

 err = register_netdev(dev);
 if (err < 0)
  goto fail_free_dev;

 return dev;

fail_free_dev:
 free_netdev(dev);
fail:
 return ((void*)0);
}
