
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int dummy; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int ENODEV ;
 int ZD1201_RID_CNFOWNMACADDR ;
 int memcpy (int ,int ,int ) ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int zd1201_mac_reset (struct zd1201*) ;
 int zd1201_setconfig (struct zd1201*,int ,int ,int ,int) ;

__attribute__((used)) static int zd1201_set_mac_address(struct net_device *dev, void *p)
{
 struct sockaddr *addr = p;
 struct zd1201 *zd = netdev_priv(dev);
 int err;

 if (!zd)
  return -ENODEV;

 err = zd1201_setconfig(zd, ZD1201_RID_CNFOWNMACADDR,
     addr->sa_data, dev->addr_len, 1);
 if (err)
  return err;
 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);

 return zd1201_mac_reset(zd);
}
