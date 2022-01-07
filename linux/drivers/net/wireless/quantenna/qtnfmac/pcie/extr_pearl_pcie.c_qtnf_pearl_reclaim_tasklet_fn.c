
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_pcie_pearl_state {int dummy; } ;


 int qtnf_en_txdone_irq (struct qtnf_pcie_pearl_state*) ;
 int qtnf_pearl_data_tx_reclaim (struct qtnf_pcie_pearl_state*) ;

__attribute__((used)) static void qtnf_pearl_reclaim_tasklet_fn(unsigned long data)
{
 struct qtnf_pcie_pearl_state *ps = (void *)data;

 qtnf_pearl_data_tx_reclaim(ps);
 qtnf_en_txdone_irq(ps);
}
