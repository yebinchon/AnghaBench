
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct ndmsg {int dummy; } ;


 int ethsw_port_fdb_add_mc (int ,unsigned char const*) ;
 int ethsw_port_fdb_add_uc (int ,unsigned char const*) ;
 scalar_t__ is_unicast_ether_addr (unsigned char const*) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static int port_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
   struct net_device *dev, const unsigned char *addr,
   u16 vid, u16 flags,
   struct netlink_ext_ack *extack)
{
 if (is_unicast_ether_addr(addr))
  return ethsw_port_fdb_add_uc(netdev_priv(dev),
          addr);
 else
  return ethsw_port_fdb_add_mc(netdev_priv(dev),
          addr);
}
