
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_pcie_topaz_state {int dummy; } ;
struct qtnf_bus {int mux_napi; } ;


 int enable_rx_irqs (struct qtnf_pcie_topaz_state*) ;
 struct qtnf_pcie_topaz_state* get_bus_priv (struct qtnf_bus*) ;
 int napi_enable (int *) ;

__attribute__((used)) static void qtnf_pcie_data_rx_start(struct qtnf_bus *bus)
{
 struct qtnf_pcie_topaz_state *ts = get_bus_priv(bus);

 napi_enable(&bus->mux_napi);
 enable_rx_irqs(ts);
}
