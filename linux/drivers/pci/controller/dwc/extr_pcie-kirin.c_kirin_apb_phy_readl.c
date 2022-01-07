
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct kirin_pcie {scalar_t__ phy_base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 kirin_apb_phy_readl(struct kirin_pcie *kirin_pcie, u32 reg)
{
 return readl(kirin_pcie->phy_base + reg);
}
