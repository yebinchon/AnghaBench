
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcs_gpiofunc_range {int node; int gpiofunc; int npins; int offset; } ;
struct pcs_device {int mutex; int gpiofuncs; int dev; } ;
struct of_phandle_args {int * args; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct pcs_gpiofunc_range* devm_kzalloc (int ,int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_parse_phandle_with_args (struct device_node*,char const*,char const*,int,struct of_phandle_args*) ;

__attribute__((used)) static int pcs_add_gpio_func(struct device_node *node, struct pcs_device *pcs)
{
 const char *propname = "pinctrl-single,gpio-range";
 const char *cellname = "#pinctrl-single,gpio-range-cells";
 struct of_phandle_args gpiospec;
 struct pcs_gpiofunc_range *range;
 int ret, i;

 for (i = 0; ; i++) {
  ret = of_parse_phandle_with_args(node, propname, cellname,
       i, &gpiospec);

  if (ret) {
   ret = 0;
   break;
  }
  range = devm_kzalloc(pcs->dev, sizeof(*range), GFP_KERNEL);
  if (!range) {
   ret = -ENOMEM;
   break;
  }
  range->offset = gpiospec.args[0];
  range->npins = gpiospec.args[1];
  range->gpiofunc = gpiospec.args[2];
  mutex_lock(&pcs->mutex);
  list_add_tail(&range->node, &pcs->gpiofuncs);
  mutex_unlock(&pcs->mutex);
 }
 return ret;
}
