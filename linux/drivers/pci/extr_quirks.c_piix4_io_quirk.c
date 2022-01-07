
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct pci_dev {int dummy; } ;


 int pci_info (struct pci_dev*,char*,char const*,unsigned int,unsigned int) ;
 int pci_read_config_dword (struct pci_dev*,unsigned int,unsigned int*) ;

__attribute__((used)) static void piix4_io_quirk(struct pci_dev *dev, const char *name, unsigned int port, unsigned int enable)
{
 u32 devres;
 u32 mask, size, base;

 pci_read_config_dword(dev, port, &devres);
 if ((devres & enable) != enable)
  return;
 mask = (devres >> 16) & 15;
 base = devres & 0xffff;
 size = 16;
 for (;;) {
  unsigned bit = size >> 1;
  if ((bit & mask) == bit)
   break;
  size = bit;
 }





 base &= -size;
 pci_info(dev, "%s PIO at %04x-%04x\n", name, base, base + size - 1);
}
