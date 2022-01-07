
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sunxi_sram_func {scalar_t__ val; unsigned int reg_val; scalar_t__ func; } ;
typedef struct sunxi_sram_data {struct sunxi_sram_func* func; } const sunxi_sram_data ;
struct of_phandle_args {scalar_t__* args; int np; } ;
struct of_device_id {struct sunxi_sram_data const* data; } ;
struct device_node {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 struct sunxi_sram_data const* ERR_PTR (int) ;
 int of_device_is_available (int ) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int of_node_put (int ) ;
 int of_parse_phandle_with_fixed_args (struct device_node*,char*,int,int ,struct of_phandle_args*) ;
 int sunxi_sram_dt_ids ;

__attribute__((used)) static const struct sunxi_sram_data *sunxi_sram_of_parse(struct device_node *node,
        unsigned int *reg_value)
{
 const struct of_device_id *match;
 const struct sunxi_sram_data *data;
 struct sunxi_sram_func *func;
 struct of_phandle_args args;
 u8 val;
 int ret;

 ret = of_parse_phandle_with_fixed_args(node, "allwinner,sram", 1, 0,
            &args);
 if (ret)
  return ERR_PTR(ret);

 if (!of_device_is_available(args.np)) {
  ret = -EBUSY;
  goto err;
 }

 val = args.args[0];

 match = of_match_node(sunxi_sram_dt_ids, args.np);
 if (!match) {
  ret = -EINVAL;
  goto err;
 }

 data = match->data;
 if (!data) {
  ret = -EINVAL;
  goto err;
 };

 for (func = data->func; func->func; func++) {
  if (val == func->val) {
   if (reg_value)
    *reg_value = func->reg_val;

   break;
  }
 }

 if (!func->func) {
  ret = -EINVAL;
  goto err;
 }

 of_node_put(args.np);
 return match->data;

err:
 of_node_put(args.np);
 return ERR_PTR(ret);
}
