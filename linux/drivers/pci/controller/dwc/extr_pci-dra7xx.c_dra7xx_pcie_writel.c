
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dra7xx_pcie {scalar_t__ base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void dra7xx_pcie_writel(struct dra7xx_pcie *pcie, u32 offset,
          u32 value)
{
 writel(value, pcie->base + offset);
}
