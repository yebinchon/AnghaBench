
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_pcie_topaz_state {int dummy; } ;
struct qtnf_bus {int dummy; } ;


 struct qtnf_pcie_topaz_state* get_bus_priv (struct qtnf_bus*) ;
 int qtnf_topaz_free_xfer_buffers (struct qtnf_pcie_topaz_state*) ;
 int qtnf_topaz_reset_ep (struct qtnf_pcie_topaz_state*) ;

__attribute__((used)) static void qtnf_pcie_topaz_remove(struct qtnf_bus *bus)
{
 struct qtnf_pcie_topaz_state *ts = get_bus_priv(bus);

 qtnf_topaz_reset_ep(ts);
 qtnf_topaz_free_xfer_buffers(ts);
}
