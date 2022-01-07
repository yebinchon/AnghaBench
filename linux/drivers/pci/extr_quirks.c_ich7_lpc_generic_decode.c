
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int pci_info (struct pci_dev*,char*,char const*,int,int) ;
 int pci_read_config_dword (struct pci_dev*,unsigned int,int*) ;

__attribute__((used)) static void ich7_lpc_generic_decode(struct pci_dev *dev, unsigned reg,
        const char *name)
{
 u32 val;
 u32 mask, base;

 pci_read_config_dword(dev, reg, &val);


 if (!(val & 1))
  return;


 base = val & 0xfffc;
 mask = (val >> 16) & 0xfc;
 mask |= 3;





 pci_info(dev, "%s PIO at %04x (mask %04x)\n", name, base, mask);
}
