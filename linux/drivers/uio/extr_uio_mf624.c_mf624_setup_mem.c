
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_mem {char const* name; int addr; int offs; int size; int internal_addr; int memtype; } ;
struct pci_dev {int dummy; } ;
typedef int resource_size_t ;


 int ENODEV ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int UIO_MEM_PHYS ;
 int pci_ioremap_bar (struct pci_dev*,int) ;
 int pci_resource_len (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;

__attribute__((used)) static int mf624_setup_mem(struct pci_dev *dev, int bar, struct uio_mem *mem, const char *name)
{
 resource_size_t start = pci_resource_start(dev, bar);
 resource_size_t len = pci_resource_len(dev, bar);

 mem->name = name;
 mem->addr = start & PAGE_MASK;
 mem->offs = start & ~PAGE_MASK;
 if (!mem->addr)
  return -ENODEV;
 mem->size = ((start & ~PAGE_MASK) + len + PAGE_SIZE - 1) & PAGE_MASK;
 mem->memtype = UIO_MEM_PHYS;
 mem->internal_addr = pci_ioremap_bar(dev, bar);
 if (!mem->internal_addr)
  return -ENODEV;
 return 0;
}
