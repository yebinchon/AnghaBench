
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int suspend_cb; int resume_cb; int dma_mask_get_cb; int remove_cb; int probe_cb; } ;
struct qtnf_pcie_topaz_state {TYPE_1__ base; } ;
struct qtnf_bus {int dummy; } ;
struct pci_dev {int dev; } ;


 int GFP_KERNEL ;
 struct qtnf_bus* devm_kzalloc (int *,int,int ) ;
 struct qtnf_pcie_topaz_state* get_bus_priv (struct qtnf_bus*) ;
 int qtnf_pcie_topaz_probe ;
 int qtnf_pcie_topaz_remove ;
 int qtnf_pcie_topaz_resume ;
 int qtnf_pcie_topaz_suspend ;
 int qtnf_topaz_dma_mask_get ;

struct qtnf_bus *qtnf_pcie_topaz_alloc(struct pci_dev *pdev)
{
 struct qtnf_bus *bus;
 struct qtnf_pcie_topaz_state *ts;

 bus = devm_kzalloc(&pdev->dev, sizeof(*bus) + sizeof(*ts), GFP_KERNEL);
 if (!bus)
  return ((void*)0);

 ts = get_bus_priv(bus);
 ts->base.probe_cb = qtnf_pcie_topaz_probe;
 ts->base.remove_cb = qtnf_pcie_topaz_remove;
 ts->base.dma_mask_get_cb = qtnf_topaz_dma_mask_get;





 return bus;
}
