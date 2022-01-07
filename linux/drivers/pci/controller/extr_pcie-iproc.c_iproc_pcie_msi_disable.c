
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_pcie {int dummy; } ;


 int iproc_msi_exit (struct iproc_pcie*) ;

__attribute__((used)) static void iproc_pcie_msi_disable(struct iproc_pcie *pcie)
{
 iproc_msi_exit(pcie);
}
