
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct of_phandle_args {int np; int * args; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int of_node_put (int ) ;
 int of_parse_phandle_with_fixed_args (struct device_node*,char*,int,int ,struct of_phandle_args*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 struct regmap* syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int dra7xx_pcie_unaligned_memaccess(struct device *dev)
{
 int ret;
 struct device_node *np = dev->of_node;
 struct of_phandle_args args;
 struct regmap *regmap;

 regmap = syscon_regmap_lookup_by_phandle(np,
       "ti,syscon-unaligned-access");
 if (IS_ERR(regmap)) {
  dev_dbg(dev, "can't get ti,syscon-unaligned-access\n");
  return -EINVAL;
 }

 ret = of_parse_phandle_with_fixed_args(np, "ti,syscon-unaligned-access",
            2, 0, &args);
 if (ret) {
  dev_err(dev, "failed to parse ti,syscon-unaligned-access\n");
  return ret;
 }

 ret = regmap_update_bits(regmap, args.args[0], args.args[1],
     args.args[1]);
 if (ret)
  dev_err(dev, "failed to enable unaligned access\n");

 of_node_put(args.np);

 return ret;
}
