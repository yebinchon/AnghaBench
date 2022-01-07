
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus_region {scalar_t__ start; scalar_t__ end; } ;



__attribute__((used)) static bool region_contains(struct pci_bus_region *region1,
       struct pci_bus_region *region2)
{
 return region1->start <= region2->start && region1->end >= region2->end;
}
