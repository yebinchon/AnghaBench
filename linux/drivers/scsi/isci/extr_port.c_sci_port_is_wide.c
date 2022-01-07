
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct isci_port {int ** phy_table; } ;


 size_t SCI_MAX_PHYS ;

__attribute__((used)) static bool sci_port_is_wide(struct isci_port *iport)
{
 u32 index;
 u32 phy_count = 0;

 for (index = 0; index < SCI_MAX_PHYS; index++) {
  if (iport->phy_table[index] != ((void*)0)) {
   phy_count++;
  }
 }

 return phy_count != 1;
}
