
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct cdns_pcie {scalar_t__ reg_base; } ;


 int writew (int ,scalar_t__) ;

__attribute__((used)) static inline void cdns_pcie_writew(struct cdns_pcie *pcie, u32 reg, u16 value)
{
 writew(value, pcie->reg_base + reg);
}
