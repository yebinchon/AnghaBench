
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int shpc_managed; } ;



bool shpchp_is_native(struct pci_dev *bridge)
{
 return bridge->shpc_managed;
}
