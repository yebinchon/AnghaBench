
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_pcie_topaz_state {int dummy; } ;


 int qtnf_topaz_data_tx_reclaim (struct qtnf_pcie_topaz_state*) ;

__attribute__((used)) static void qtnf_reclaim_tasklet_fn(unsigned long data)
{
 struct qtnf_pcie_topaz_state *ts = (void *)data;

 qtnf_topaz_data_tx_reclaim(ts);
}
