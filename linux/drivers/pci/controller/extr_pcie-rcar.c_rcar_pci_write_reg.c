
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_pcie {scalar_t__ base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void rcar_pci_write_reg(struct rcar_pcie *pcie, u32 val,
          unsigned int reg)
{
 writel(val, pcie->base + reg);
}
