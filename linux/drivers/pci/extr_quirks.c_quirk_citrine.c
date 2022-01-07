
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int cfg_size; } ;



__attribute__((used)) static void quirk_citrine(struct pci_dev *dev)
{
 dev->cfg_size = 0xA0;
}
