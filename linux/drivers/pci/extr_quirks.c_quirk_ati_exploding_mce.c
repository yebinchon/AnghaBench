
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_info (struct pci_dev*,char*) ;
 int request_region (int,int,char*) ;

__attribute__((used)) static void quirk_ati_exploding_mce(struct pci_dev *dev)
{
 pci_info(dev, "ATI Northbridge, reserving I/O ports 0x3b0 to 0x3bb\n");

 request_region(0x3b0, 0x0C, "RadeonIGP");
 request_region(0x3d3, 0x01, "RadeonIGP");
}
