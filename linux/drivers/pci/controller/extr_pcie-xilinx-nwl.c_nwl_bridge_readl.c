
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nwl_pcie {scalar_t__ breg_base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 nwl_bridge_readl(struct nwl_pcie *pcie, u32 off)
{
 return readl(pcie->breg_base + off);
}
