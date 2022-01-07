
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct pci_host_bridge {struct mt7621_pcie* sysdata; int swizzle_irq; int map_irq; int * ops; TYPE_2__ dev; int busnr; int windows; } ;
struct TYPE_3__ {int start; } ;
struct mt7621_pcie {int dev; TYPE_1__ busn; } ;
struct list_head {int dummy; } ;


 int list_splice_init (struct list_head*,int *) ;
 int mt7621_pci_ops ;
 int of_irq_parse_and_map_pci ;
 int pci_common_swizzle ;
 struct mt7621_pcie* pci_host_bridge_priv (struct pci_host_bridge*) ;
 int pci_host_probe (struct pci_host_bridge*) ;

__attribute__((used)) static int mt7621_pcie_register_host(struct pci_host_bridge *host,
         struct list_head *res)
{
 struct mt7621_pcie *pcie = pci_host_bridge_priv(host);

 list_splice_init(res, &host->windows);
 host->busnr = pcie->busn.start;
 host->dev.parent = pcie->dev;
 host->ops = &mt7621_pci_ops;
 host->map_irq = of_irq_parse_and_map_pci;
 host->swizzle_irq = pci_common_swizzle;
 host->sysdata = pcie;

 return pci_host_probe(host);
}
