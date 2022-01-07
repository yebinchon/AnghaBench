
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_dma_pci {int address; } ;
struct vme_dma_attr {void* private; int type; } ;
typedef int dma_addr_t ;


 int GFP_KERNEL ;
 int VME_DMA_PCI ;
 int kfree (struct vme_dma_attr*) ;
 void* kmalloc (int,int ) ;

struct vme_dma_attr *vme_dma_pci_attribute(dma_addr_t address)
{
 struct vme_dma_attr *attributes;
 struct vme_dma_pci *pci_attr;



 attributes = kmalloc(sizeof(*attributes), GFP_KERNEL);
 if (!attributes)
  goto err_attr;

 pci_attr = kmalloc(sizeof(*pci_attr), GFP_KERNEL);
 if (!pci_attr)
  goto err_pci;

 attributes->type = VME_DMA_PCI;
 attributes->private = (void *)pci_attr;

 pci_attr->address = address;

 return attributes;

err_pci:
 kfree(attributes);
err_attr:
 return ((void*)0);
}
