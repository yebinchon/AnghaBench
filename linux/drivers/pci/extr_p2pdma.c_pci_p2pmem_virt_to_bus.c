
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* p2pdma; } ;
typedef int pci_bus_addr_t ;
struct TYPE_2__ {int pool; } ;


 int gen_pool_virt_to_phys (int ,unsigned long) ;

pci_bus_addr_t pci_p2pmem_virt_to_bus(struct pci_dev *pdev, void *addr)
{
 if (!addr)
  return 0;
 if (!pdev->p2pdma)
  return 0;






 return gen_pool_virt_to_phys(pdev->p2pdma->pool, (unsigned long)addr);
}
