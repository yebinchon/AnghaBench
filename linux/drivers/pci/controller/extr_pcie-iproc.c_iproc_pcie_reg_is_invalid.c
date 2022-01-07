
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ IPROC_PCIE_REG_INVALID ;

__attribute__((used)) static inline bool iproc_pcie_reg_is_invalid(u16 reg_offset)
{
 return !!(reg_offset == IPROC_PCIE_REG_INVALID);
}
