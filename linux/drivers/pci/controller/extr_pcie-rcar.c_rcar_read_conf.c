
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct rcar_pcie {int dummy; } ;


 int BITS_PER_BYTE ;
 unsigned int rcar_pci_read_reg (struct rcar_pcie*,int) ;

__attribute__((used)) static u32 rcar_read_conf(struct rcar_pcie *pcie, int where)
{
 unsigned int shift = BITS_PER_BYTE * (where & 3);
 u32 val = rcar_pci_read_reg(pcie, where & ~3);

 return val >> shift;
}
