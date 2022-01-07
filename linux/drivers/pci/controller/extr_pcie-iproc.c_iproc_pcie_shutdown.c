
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_pcie {int dummy; } ;


 int iproc_pcie_perst_ctrl (struct iproc_pcie*,int) ;
 int msleep (int) ;

int iproc_pcie_shutdown(struct iproc_pcie *pcie)
{
 iproc_pcie_perst_ctrl(pcie, 1);
 msleep(500);

 return 0;
}
