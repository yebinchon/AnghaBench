
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iproc_pcie {scalar_t__ base; } ;
struct iproc_msi {scalar_t__** reg_offsets; struct iproc_pcie* pcie; } ;
typedef enum iproc_msi_reg { ____Placeholder_iproc_msi_reg } iproc_msi_reg ;


 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void iproc_msi_write_reg(struct iproc_msi *msi,
           enum iproc_msi_reg reg,
           int eq, u32 val)
{
 struct iproc_pcie *pcie = msi->pcie;

 writel_relaxed(val, pcie->base + msi->reg_offsets[eq][reg]);
}
