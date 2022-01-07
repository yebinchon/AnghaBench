
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int uwk; int uwk_vers; int uwk_reg_base; int dev; int uwk_en; } ;
struct of_phandle_args {int np; int * args; } ;
struct device_node {int dummy; } ;


 int PTR_ERR_OR_ZERO (int ) ;
 int dev_info (int ,char*,int ,int ) ;
 int of_node_put (int ) ;
 int of_parse_phandle_with_fixed_args (struct device_node*,char*,int,int ,struct of_phandle_args*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int syscon_node_to_regmap (int ) ;

int ssusb_wakeup_of_property_parse(struct ssusb_mtk *ssusb,
    struct device_node *dn)
{
 struct of_phandle_args args;
 int ret;


 ssusb->uwk_en = of_property_read_bool(dn, "wakeup-source");
 if (!ssusb->uwk_en)
  return 0;

 ret = of_parse_phandle_with_fixed_args(dn,
    "mediatek,syscon-wakeup", 2, 0, &args);
 if (ret)
  return ret;

 ssusb->uwk_reg_base = args.args[0];
 ssusb->uwk_vers = args.args[1];
 ssusb->uwk = syscon_node_to_regmap(args.np);
 of_node_put(args.np);
 dev_info(ssusb->dev, "uwk - reg:0x%x, version:%d\n",
   ssusb->uwk_reg_base, ssusb->uwk_vers);

 return PTR_ERR_OR_ZERO(ssusb->uwk);
}
