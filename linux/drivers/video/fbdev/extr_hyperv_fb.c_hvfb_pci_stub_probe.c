
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;



__attribute__((used)) static int hvfb_pci_stub_probe(struct pci_dev *pdev,
          const struct pci_device_id *ent)
{
 return 0;
}
