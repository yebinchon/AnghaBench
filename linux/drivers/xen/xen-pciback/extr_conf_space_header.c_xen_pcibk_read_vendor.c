
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int vendor; } ;



__attribute__((used)) static int xen_pcibk_read_vendor(struct pci_dev *dev, int offset,
          u16 *value, void *data)
{
 *value = dev->vendor;

 return 0;
}
