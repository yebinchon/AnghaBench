
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct neigh_parms {int neigh_setup; TYPE_1__* tbl; } ;
struct TYPE_2__ {scalar_t__ family; } ;


 scalar_t__ AF_INET ;
 int qeth_l3_neigh_setup_noarp ;

__attribute__((used)) static int
qeth_l3_neigh_setup(struct net_device *dev, struct neigh_parms *np)
{
 if (np->tbl->family == AF_INET)
  np->neigh_setup = qeth_l3_neigh_setup_noarp;

 return 0;
}
