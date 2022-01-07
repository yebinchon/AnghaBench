
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_pcie {int dummy; } ;


 int IPROC_PCIE_INTX_EN ;
 int SYS_RC_INTX_MASK ;
 int iproc_pcie_write_reg (struct iproc_pcie*,int ,int ) ;

__attribute__((used)) static void iproc_pcie_enable(struct iproc_pcie *pcie)
{
 iproc_pcie_write_reg(pcie, IPROC_PCIE_INTX_EN, SYS_RC_INTX_MASK);
}
