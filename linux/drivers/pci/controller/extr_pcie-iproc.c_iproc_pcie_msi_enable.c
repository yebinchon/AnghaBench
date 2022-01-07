
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iproc_pcie {scalar_t__ need_msi_steer; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int of_node; } ;


 int ENODEV ;
 int be32_to_cpup (int const*) ;
 int iproc_msi_init (struct iproc_pcie*,struct device_node*) ;
 int iproc_pcie_msi_steer (struct iproc_pcie*,struct device_node*) ;
 struct device_node* of_find_node_by_phandle (int ) ;
 int * of_get_property (int ,char*,int*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;

__attribute__((used)) static int iproc_pcie_msi_enable(struct iproc_pcie *pcie)
{
 struct device_node *msi_node;
 int ret;






 msi_node = of_parse_phandle(pcie->dev->of_node, "msi-parent", 0);
 if (!msi_node) {
  const __be32 *msi_map = ((void*)0);
  int len;
  u32 phandle;

  msi_map = of_get_property(pcie->dev->of_node, "msi-map", &len);
  if (!msi_map)
   return -ENODEV;

  phandle = be32_to_cpup(msi_map + 1);
  msi_node = of_find_node_by_phandle(phandle);
  if (!msi_node)
   return -ENODEV;
 }






 if (pcie->need_msi_steer) {
  ret = iproc_pcie_msi_steer(pcie, msi_node);
  if (ret)
   goto out_put_node;
 }





 ret = iproc_msi_init(pcie, msi_node);

out_put_node:
 of_node_put(msi_node);
 return ret;
}
