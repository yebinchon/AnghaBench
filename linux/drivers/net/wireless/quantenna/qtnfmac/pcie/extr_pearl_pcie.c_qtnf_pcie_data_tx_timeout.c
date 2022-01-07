
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reclaim_tq; } ;
struct qtnf_pcie_pearl_state {TYPE_1__ base; } ;
struct qtnf_bus {int dummy; } ;
struct net_device {int dummy; } ;


 scalar_t__ get_bus_priv (struct qtnf_bus*) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static void
qtnf_pcie_data_tx_timeout(struct qtnf_bus *bus, struct net_device *ndev)
{
 struct qtnf_pcie_pearl_state *ps = (void *)get_bus_priv(bus);

 tasklet_hi_schedule(&ps->base.reclaim_tq);
}
