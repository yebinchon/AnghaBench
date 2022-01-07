
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_pcie_pearl_state {int dummy; } ;
struct qtnf_bus {int dummy; } ;


 struct qtnf_pcie_pearl_state* get_bus_priv (struct qtnf_bus*) ;
 int qtnf_pearl_free_xfer_buffers (struct qtnf_pcie_pearl_state*) ;
 int qtnf_pearl_reset_ep (struct qtnf_pcie_pearl_state*) ;

__attribute__((used)) static void qtnf_pcie_pearl_remove(struct qtnf_bus *bus)
{
 struct qtnf_pcie_pearl_state *ps = get_bus_priv(bus);

 qtnf_pearl_reset_ep(ps);
 qtnf_pearl_free_xfer_buffers(ps);
}
