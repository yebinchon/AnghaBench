
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_bus {int dummy; } ;


 int pci_bus_read_config_byte (struct pci_bus*,unsigned int,int,int*) ;
 int pci_bus_read_config_word (struct pci_bus*,unsigned int,int,int*) ;

__attribute__((used)) static int __pci_find_next_cap_ttl(struct pci_bus *bus, unsigned int devfn,
       u8 pos, int cap, int *ttl)
{
 u8 id;
 u16 ent;

 pci_bus_read_config_byte(bus, devfn, pos, &pos);

 while ((*ttl)--) {
  if (pos < 0x40)
   break;
  pos &= ~3;
  pci_bus_read_config_word(bus, devfn, pos, &ent);

  id = ent & 0xff;
  if (id == 0xff)
   break;
  if (id == cap)
   return pos;
  pos = (ent >> 8);
 }
 return 0;
}
