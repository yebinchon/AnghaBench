
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int flags; int start; } ;
struct rcar_pcie {int dummy; } ;
typedef int resource_size_t ;


 int IORESOURCE_IO ;
 int IO_SPACE ;
 int PAR_ENABLE ;
 int PCIEPALR (int) ;
 int PCIEPAMR (int) ;
 int PCIEPAUR (int) ;
 int PCIEPTCTLR (int) ;
 int SZ_128 ;
 int lower_32_bits (int ) ;
 int pci_pio_to_address (int ) ;
 int rcar_pci_write_reg (struct rcar_pcie*,int,int ) ;
 int resource_size (struct resource*) ;
 int roundup_pow_of_two (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void rcar_pcie_setup_window(int win, struct rcar_pcie *pcie,
       struct resource *res)
{

 resource_size_t size;
 resource_size_t res_start;
 u32 mask;

 rcar_pci_write_reg(pcie, 0x00000000, PCIEPTCTLR(win));





 size = resource_size(res);
 mask = (roundup_pow_of_two(size) / SZ_128) - 1;
 rcar_pci_write_reg(pcie, mask << 7, PCIEPAMR(win));

 if (res->flags & IORESOURCE_IO)
  res_start = pci_pio_to_address(res->start);
 else
  res_start = res->start;

 rcar_pci_write_reg(pcie, upper_32_bits(res_start), PCIEPAUR(win));
 rcar_pci_write_reg(pcie, lower_32_bits(res_start) & ~0x7F,
      PCIEPALR(win));


 mask = PAR_ENABLE;
 if (res->flags & IORESOURCE_IO)
  mask |= IO_SPACE;

 rcar_pci_write_reg(pcie, mask, PCIEPTCTLR(win));
}
