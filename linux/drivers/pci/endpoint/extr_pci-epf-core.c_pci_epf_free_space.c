
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_epf {TYPE_1__* bar; TYPE_2__* epc; } ;
struct device {int dummy; } ;
typedef enum pci_barno { ____Placeholder_pci_barno } pci_barno ;
struct TYPE_6__ {struct device* parent; } ;
struct TYPE_5__ {TYPE_3__ dev; } ;
struct TYPE_4__ {scalar_t__ flags; scalar_t__ barno; int size; int phys_addr; } ;


 int dma_free_coherent (struct device*,int ,void*,int ) ;

void pci_epf_free_space(struct pci_epf *epf, void *addr, enum pci_barno bar)
{
 struct device *dev = epf->epc->dev.parent;

 if (!addr)
  return;

 dma_free_coherent(dev, epf->bar[bar].size, addr,
     epf->bar[bar].phys_addr);

 epf->bar[bar].phys_addr = 0;
 epf->bar[bar].size = 0;
 epf->bar[bar].barno = 0;
 epf->bar[bar].flags = 0;
}
