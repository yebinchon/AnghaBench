
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dw_pcie {int dummy; } ;


 int dw_pcie_write_dbi (struct dw_pcie*,int ,int,int ) ;

__attribute__((used)) static inline void dw_pcie_writew_dbi(struct dw_pcie *pci, u32 reg, u16 val)
{
 dw_pcie_write_dbi(pci, reg, 0x2, val);
}
