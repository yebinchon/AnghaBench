
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeonfb_info {int bios_seg; } ;
struct pci_dev {int dummy; } ;


 int pci_unmap_rom (struct pci_dev*,int ) ;

__attribute__((used)) static void radeon_unmap_ROM(struct radeonfb_info *rinfo, struct pci_dev *dev)
{
 if (!rinfo->bios_seg)
  return;
 pci_unmap_rom(dev, rinfo->bios_seg);
}
