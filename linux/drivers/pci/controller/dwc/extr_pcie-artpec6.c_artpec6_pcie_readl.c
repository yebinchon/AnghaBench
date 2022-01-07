
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct artpec6_pcie {int regmap; } ;


 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static u32 artpec6_pcie_readl(struct artpec6_pcie *artpec6_pcie, u32 offset)
{
 u32 val;

 regmap_read(artpec6_pcie->regmap, offset, &val);
 return val;
}
