
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; int devfn; } ;
 void* PCI_SLOT (int ) ;
 void* via_vlink_dev_hi ;
 int via_vlink_dev_lo ;

__attribute__((used)) static void quirk_via_bridge(struct pci_dev *dev)
{

 switch (dev->device) {
 case 128:





  via_vlink_dev_lo = PCI_SLOT(dev->devfn);
  via_vlink_dev_hi = PCI_SLOT(dev->devfn);
  break;
 case 130:
 case 129:
  via_vlink_dev_lo = 15;
  break;
 case 131:
  via_vlink_dev_lo = 16;
  break;
 case 135:
 case 132:
 case 134:
 case 133:
  via_vlink_dev_lo = 17;
  break;
 }
}
