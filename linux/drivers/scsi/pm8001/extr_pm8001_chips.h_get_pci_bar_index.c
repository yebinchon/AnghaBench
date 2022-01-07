
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 get_pci_bar_index(u32 pcibar)
{
  switch (pcibar) {
  case 0x18:
  case 0x1C:
   return 1;
  case 0x20:
   return 2;
  case 0x24:
   return 3;
  default:
   return 0;
 }
}
