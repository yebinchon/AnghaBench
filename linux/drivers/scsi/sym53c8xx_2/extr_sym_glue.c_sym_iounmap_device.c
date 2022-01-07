
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ramaddr; scalar_t__ ioaddr; } ;
struct sym_device {TYPE_1__ s; int pdev; } ;


 int pci_iounmap (int ,scalar_t__) ;

__attribute__((used)) static void sym_iounmap_device(struct sym_device *device)
{
 if (device->s.ioaddr)
  pci_iounmap(device->pdev, device->s.ioaddr);
 if (device->s.ramaddr)
  pci_iounmap(device->pdev, device->s.ramaddr);
}
