
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_pcie_topaz_state {int dummy; } ;
struct qtnf_bus {int mux_napi; } ;


 int disable_rx_irqs (struct qtnf_pcie_topaz_state*) ;
 struct qtnf_pcie_topaz_state* get_bus_priv (struct qtnf_bus*) ;
 int napi_disable (int *) ;

__attribute__((used)) static void qtnf_pcie_data_rx_stop(struct qtnf_bus *bus)
{
 struct qtnf_pcie_topaz_state *ts = get_bus_priv(bus);

 disable_rx_irqs(ts);
 napi_disable(&bus->mux_napi);
}
