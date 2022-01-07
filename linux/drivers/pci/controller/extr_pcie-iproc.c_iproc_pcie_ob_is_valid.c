
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iproc_pcie {int dummy; } ;


 int IPROC_PCIE_OARR0 ;
 int MAP_REG (int ,int) ;
 int OARR_VALID ;
 int iproc_pcie_read_reg (struct iproc_pcie*,int ) ;

__attribute__((used)) static inline bool iproc_pcie_ob_is_valid(struct iproc_pcie *pcie,
       int window_idx)
{
 u32 val;

 val = iproc_pcie_read_reg(pcie, MAP_REG(IPROC_PCIE_OARR0, window_idx));

 return !!(val & OARR_VALID);
}
