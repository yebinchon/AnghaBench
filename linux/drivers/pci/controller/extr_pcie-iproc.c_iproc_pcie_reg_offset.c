
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iproc_pcie {int * reg_offsets; } ;
typedef enum iproc_pcie_reg { ____Placeholder_iproc_pcie_reg } iproc_pcie_reg ;



__attribute__((used)) static inline u16 iproc_pcie_reg_offset(struct iproc_pcie *pcie,
     enum iproc_pcie_reg reg)
{
 return pcie->reg_offsets[reg];
}
