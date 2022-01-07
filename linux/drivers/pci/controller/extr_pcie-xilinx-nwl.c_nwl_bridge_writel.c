
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nwl_pcie {scalar_t__ breg_base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void nwl_bridge_writel(struct nwl_pcie *pcie, u32 val, u32 off)
{
 writel(val, pcie->breg_base + off);
}
