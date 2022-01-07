
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int ITE_887x_IOSIZE ;
 int ITE_887x_POSIO0 ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int release_region (int,int ) ;

__attribute__((used)) static void pci_ite887x_exit(struct pci_dev *dev)
{
 u32 ioport;

 pci_read_config_dword(dev, ITE_887x_POSIO0, &ioport);
 ioport &= 0xffff;
 release_region(ioport, ITE_887x_IOSIZE);
}
