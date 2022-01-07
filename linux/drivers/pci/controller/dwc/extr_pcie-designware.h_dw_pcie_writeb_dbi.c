
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dw_pcie {int dummy; } ;


 int dw_pcie_write_dbi (struct dw_pcie*,int ,int,int ) ;

__attribute__((used)) static inline void dw_pcie_writeb_dbi(struct dw_pcie *pci, u32 reg, u8 val)
{
 dw_pcie_write_dbi(pci, reg, 0x1, val);
}
