
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_info (struct pci_dev*,char*,char*) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int quirk_io (struct pci_dev*,int,int,char*) ;

__attribute__((used)) static void quirk_cs5536_vsa(struct pci_dev *dev)
{
 static char *name = "CS5536 ISA bridge";

 if (pci_resource_len(dev, 0) != 8) {
  quirk_io(dev, 0, 8, name);
  quirk_io(dev, 1, 256, name);
  quirk_io(dev, 2, 64, name);
  pci_info(dev, "%s bug detected (incorrect header); workaround applied\n",
    name);
 }
}
