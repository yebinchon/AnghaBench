
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_pcie {scalar_t__ base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 rcar_pci_read_reg(struct rcar_pcie *pcie, unsigned int reg)
{
 return readl(pcie->base + reg);
}
