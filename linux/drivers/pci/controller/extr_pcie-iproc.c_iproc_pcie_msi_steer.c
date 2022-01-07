
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iproc_pcie {int type; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;


 int dev_err (struct device*,char*) ;
 int iproc_pcie_paxb_v2_msi_steer (struct iproc_pcie*,int ) ;
 int iproc_pcie_paxc_v2_msi_steer (struct iproc_pcie*,int ,int) ;
 int iproce_pcie_get_msi (struct iproc_pcie*,struct device_node*,int *) ;

__attribute__((used)) static int iproc_pcie_msi_steer(struct iproc_pcie *pcie,
    struct device_node *msi_node)
{
 struct device *dev = pcie->dev;
 int ret;
 u64 msi_addr;

 ret = iproce_pcie_get_msi(pcie, msi_node, &msi_addr);
 if (ret < 0) {
  dev_err(dev, "msi steering failed\n");
  return ret;
 }

 switch (pcie->type) {
 case 129:
  ret = iproc_pcie_paxb_v2_msi_steer(pcie, msi_addr);
  if (ret)
   return ret;
  break;
 case 128:
  iproc_pcie_paxc_v2_msi_steer(pcie, msi_addr, 1);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
