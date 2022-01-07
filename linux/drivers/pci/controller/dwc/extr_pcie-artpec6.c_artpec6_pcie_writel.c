
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct artpec6_pcie {int regmap; } ;


 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void artpec6_pcie_writel(struct artpec6_pcie *artpec6_pcie, u32 offset, u32 val)
{
 regmap_write(artpec6_pcie->regmap, offset, val);
}
