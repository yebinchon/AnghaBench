
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {int dummy; } ;
struct dw_pcie {struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int EINVAL ;
 int dev_err (struct device*,char*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;

__attribute__((used)) static int ls_pcie_msi_host_init(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct device *dev = pci->dev;
 struct device_node *np = dev->of_node;
 struct device_node *msi_node;







 msi_node = of_parse_phandle(np, "msi-parent", 0);
 if (!msi_node) {
  dev_err(dev, "failed to find msi-parent\n");
  return -EINVAL;
 }

 of_node_put(msi_node);
 return 0;
}
