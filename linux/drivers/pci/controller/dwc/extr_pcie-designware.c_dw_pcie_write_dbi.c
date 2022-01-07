
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct dw_pcie {int dev; scalar_t__ dbi_base; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write_dbi ) (struct dw_pcie*,scalar_t__,scalar_t__,size_t,scalar_t__) ;} ;


 int dev_err (int ,char*) ;
 int dw_pcie_write (scalar_t__,size_t,scalar_t__) ;
 int stub1 (struct dw_pcie*,scalar_t__,scalar_t__,size_t,scalar_t__) ;

void dw_pcie_write_dbi(struct dw_pcie *pci, u32 reg, size_t size, u32 val)
{
 int ret;

 if (pci->ops->write_dbi) {
  pci->ops->write_dbi(pci, pci->dbi_base, reg, size, val);
  return;
 }

 ret = dw_pcie_write(pci->dbi_base + reg, size, val);
 if (ret)
  dev_err(pci->dev, "Write DBI address failed\n");
}
