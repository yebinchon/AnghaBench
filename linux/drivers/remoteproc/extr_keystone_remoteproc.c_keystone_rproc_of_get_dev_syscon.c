
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct keystone_rproc {int boot_offset; int dev_ctrl; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 scalar_t__ of_property_read_u32_index (struct device_node*,char*,int,int *) ;
 int syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int keystone_rproc_of_get_dev_syscon(struct platform_device *pdev,
         struct keystone_rproc *ksproc)
{
 struct device_node *np = pdev->dev.of_node;
 struct device *dev = &pdev->dev;
 int ret;

 if (!of_property_read_bool(np, "ti,syscon-dev")) {
  dev_err(dev, "ti,syscon-dev property is absent\n");
  return -EINVAL;
 }

 ksproc->dev_ctrl =
  syscon_regmap_lookup_by_phandle(np, "ti,syscon-dev");
 if (IS_ERR(ksproc->dev_ctrl)) {
  ret = PTR_ERR(ksproc->dev_ctrl);
  return ret;
 }

 if (of_property_read_u32_index(np, "ti,syscon-dev", 1,
           &ksproc->boot_offset)) {
  dev_err(dev, "couldn't read the boot register offset\n");
  return -EINVAL;
 }

 return 0;
}
