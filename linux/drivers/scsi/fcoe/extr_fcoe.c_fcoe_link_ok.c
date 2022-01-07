
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fc_lport {int dummy; } ;


 struct net_device* fcoe_netdev (struct fc_lport*) ;
 scalar_t__ netif_oper_up (struct net_device*) ;

__attribute__((used)) static int fcoe_link_ok(struct fc_lport *lport)
{
 struct net_device *netdev = fcoe_netdev(lport);

 if (netif_oper_up(netdev))
  return 0;
 return -1;
}
