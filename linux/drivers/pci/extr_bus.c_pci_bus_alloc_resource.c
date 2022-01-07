
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; } ;
struct pci_bus {int dummy; } ;
typedef int resource_size_t ;


 int IORESOURCE_MEM_64 ;
 int pci_32_bit ;
 int pci_64_bit ;
 int pci_bus_alloc_from_region (struct pci_bus*,struct resource*,int ,int ,int ,unsigned long,int (*) (void*,struct resource const*,int ,int ),void*,int *) ;
 int pci_high ;

int pci_bus_alloc_resource(struct pci_bus *bus, struct resource *res,
  resource_size_t size, resource_size_t align,
  resource_size_t min, unsigned long type_mask,
  resource_size_t (*alignf)(void *,
       const struct resource *,
       resource_size_t,
       resource_size_t),
  void *alignf_data)
{
 return pci_bus_alloc_from_region(bus, res, size, align, min,
      type_mask, alignf, alignf_data,
      &pci_32_bit);
}
