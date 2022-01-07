
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcie_port {int dummy; } ;
struct ls_pcie {int index; int * scfg; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int of_node; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (struct device*,char*) ;
 int ls_pcie_host_init (struct pcie_port*) ;
 scalar_t__ of_property_read_u32_array (int ,char*,int *,int) ;
 int * syscon_regmap_lookup_by_phandle (int ,char*) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct ls_pcie* to_ls_pcie (struct dw_pcie*) ;

__attribute__((used)) static int ls1021_pcie_host_init(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct ls_pcie *pcie = to_ls_pcie(pci);
 struct device *dev = pci->dev;
 u32 index[2];
 int ret;

 pcie->scfg = syscon_regmap_lookup_by_phandle(dev->of_node,
           "fsl,pcie-scfg");
 if (IS_ERR(pcie->scfg)) {
  ret = PTR_ERR(pcie->scfg);
  dev_err(dev, "No syscfg phandle specified\n");
  pcie->scfg = ((void*)0);
  return ret;
 }

 if (of_property_read_u32_array(dev->of_node,
           "fsl,pcie-scfg", index, 2)) {
  pcie->scfg = ((void*)0);
  return -EINVAL;
 }
 pcie->index = index[1];

 return ls_pcie_host_init(pp);
}
