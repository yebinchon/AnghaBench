
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct advk_pcie {scalar_t__ base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 advk_readl(struct advk_pcie *pcie, u64 reg)
{
 return readl(pcie->base + reg);
}
