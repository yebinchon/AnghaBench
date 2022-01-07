
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 unsigned long MMIO_UPPER_LIMIT ;
 int OF_BAD_ADDR ;
 int logic_pio_to_hwaddr (unsigned long) ;

phys_addr_t pci_pio_to_address(unsigned long pio)
{
 phys_addr_t address = (phys_addr_t)OF_BAD_ADDR;
 return address;
}
