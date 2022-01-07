
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smp2p {int ipc_bit; int ipc_offset; int ipc_regmap; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,...) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int of_property_read_u32_index (int ,char const*,int,int *) ;
 int syscon_node_to_regmap (struct device_node*) ;

__attribute__((used)) static int smp2p_parse_ipc(struct qcom_smp2p *smp2p)
{
 struct device_node *syscon;
 struct device *dev = smp2p->dev;
 const char *key;
 int ret;

 syscon = of_parse_phandle(dev->of_node, "qcom,ipc", 0);
 if (!syscon) {
  dev_err(dev, "no qcom,ipc node\n");
  return -ENODEV;
 }

 smp2p->ipc_regmap = syscon_node_to_regmap(syscon);
 if (IS_ERR(smp2p->ipc_regmap))
  return PTR_ERR(smp2p->ipc_regmap);

 key = "qcom,ipc";
 ret = of_property_read_u32_index(dev->of_node, key, 1, &smp2p->ipc_offset);
 if (ret < 0) {
  dev_err(dev, "no offset in %s\n", key);
  return -EINVAL;
 }

 ret = of_property_read_u32_index(dev->of_node, key, 2, &smp2p->ipc_bit);
 if (ret < 0) {
  dev_err(dev, "no bit in %s\n", key);
  return -EINVAL;
 }

 return 0;
}
