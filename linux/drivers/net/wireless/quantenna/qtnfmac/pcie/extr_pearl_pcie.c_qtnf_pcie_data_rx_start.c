
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_pcie_pearl_state {int dummy; } ;
struct qtnf_bus {int mux_napi; } ;


 scalar_t__ get_bus_priv (struct qtnf_bus*) ;
 int napi_enable (int *) ;
 int qtnf_enable_hdp_irqs (struct qtnf_pcie_pearl_state*) ;

__attribute__((used)) static void qtnf_pcie_data_rx_start(struct qtnf_bus *bus)
{
 struct qtnf_pcie_pearl_state *ps = (void *)get_bus_priv(bus);

 qtnf_enable_hdp_irqs(ps);
 napi_enable(&bus->mux_napi);
}
