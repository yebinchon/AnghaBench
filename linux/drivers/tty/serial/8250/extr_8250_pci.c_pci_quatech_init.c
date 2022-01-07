
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int device; } ;


 int inl (unsigned long) ;
 int outl (int,unsigned long) ;
 scalar_t__ pci_quatech_amcc (int ) ;
 unsigned long pci_resource_start (struct pci_dev*,int ) ;

__attribute__((used)) static int pci_quatech_init(struct pci_dev *dev)
{
 if (pci_quatech_amcc(dev->device)) {
  unsigned long base = pci_resource_start(dev, 0);
  if (base) {
   u32 tmp;

   outl(inl(base + 0x38) | 0x00002000, base + 0x38);
   tmp = inl(base + 0x3c);
   outl(tmp | 0x01000000, base + 0x3c);
   outl(tmp &= ~0x01000000, base + 0x3c);
  }
 }
 return 0;
}
