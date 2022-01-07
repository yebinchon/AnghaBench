
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int * ops; } ;
struct dw_pcie {TYPE_1__ pp; } ;


 int dw_pcie_host_init (TYPE_1__*) ;
 int kirin_pcie_add_msi (struct dw_pcie*,struct platform_device*) ;
 int kirin_pcie_host_ops ;

__attribute__((used)) static int kirin_add_pcie_port(struct dw_pcie *pci,
          struct platform_device *pdev)
{
 int ret;

 ret = kirin_pcie_add_msi(pci, pdev);
 if (ret)
  return ret;

 pci->pp.ops = &kirin_pcie_host_ops;

 return dw_pcie_host_init(&pci->pp);
}
