
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smem_state {int dummy; } ;
struct of_phandle_args {int args_count; unsigned int* args; int np; } ;
struct device {int of_node; } ;


 int EINVAL ;
 struct qcom_smem_state* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct qcom_smem_state*) ;
 int dev_err (struct device*,char*) ;
 int of_node_put (int ) ;
 struct qcom_smem_state* of_node_to_state (int ) ;
 int of_parse_phandle_with_args (int ,char*,char*,int,struct of_phandle_args*) ;
 int of_property_match_string (int ,char*,char const*) ;

struct qcom_smem_state *qcom_smem_state_get(struct device *dev,
         const char *con_id,
         unsigned *bit)
{
 struct qcom_smem_state *state;
 struct of_phandle_args args;
 int index = 0;
 int ret;

 if (con_id) {
  index = of_property_match_string(dev->of_node,
       "qcom,smem-state-names",
       con_id);
  if (index < 0) {
   dev_err(dev, "missing qcom,smem-state-names\n");
   return ERR_PTR(index);
  }
 }

 ret = of_parse_phandle_with_args(dev->of_node,
      "qcom,smem-states",
      "#qcom,smem-state-cells",
      index,
      &args);
 if (ret) {
  dev_err(dev, "failed to parse qcom,smem-states property\n");
  return ERR_PTR(ret);
 }

 if (args.args_count != 1) {
  dev_err(dev, "invalid #qcom,smem-state-cells\n");
  return ERR_PTR(-EINVAL);
 }

 state = of_node_to_state(args.np);
 if (IS_ERR(state))
  goto put;

 *bit = args.args[0];

put:
 of_node_put(args.np);
 return state;
}
