
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned long start; } ;


 scalar_t__ PCI_IOBASE ;
 int resource_size (struct resource*) ;
 int unmap_kernel_range (unsigned long,int ) ;

void pci_unmap_iospace(struct resource *res)
{





}
