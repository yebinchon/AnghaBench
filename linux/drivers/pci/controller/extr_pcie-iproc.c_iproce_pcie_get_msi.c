
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct resource {scalar_t__ start; } ;
struct iproc_pcie {struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 scalar_t__ GITS_TRANSLATER ;
 int dev_err (struct device*,char*) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_device_is_compatible (struct device_node*,char*) ;

__attribute__((used)) static int iproce_pcie_get_msi(struct iproc_pcie *pcie,
          struct device_node *msi_node,
          u64 *msi_addr)
{
 struct device *dev = pcie->dev;
 int ret;
 struct resource res;





 if (!of_device_is_compatible(msi_node, "arm,gic-v3-its")) {
  dev_err(dev, "unable to find compatible MSI controller\n");
  return -ENODEV;
 }


 ret = of_address_to_resource(msi_node, 0, &res);
 if (ret < 0) {
  dev_err(dev, "unable to obtain MSI controller resources\n");
  return ret;
 }

 *msi_addr = res.start + GITS_TRANSLATER;
 return 0;
}
