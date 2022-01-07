
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mobiveil_pcie {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 void* mobiveil_pcie_comp_addr (struct mobiveil_pcie*,int ) ;
 int mobiveil_pcie_read (void*,size_t,int *) ;

__attribute__((used)) static u32 csr_read(struct mobiveil_pcie *pcie, u32 off, size_t size)
{
 void *addr;
 u32 val;
 int ret;

 addr = mobiveil_pcie_comp_addr(pcie, off);

 ret = mobiveil_pcie_read(addr, size, &val);
 if (ret)
  dev_err(&pcie->pdev->dev, "read CSR address failed\n");

 return val;
}
