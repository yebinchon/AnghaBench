
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_init_data {int dummy; } ;
struct regulator_desc {int (* of_parse_cb ) (struct device_node*,struct regulator_desc const*,struct regulator_config*) ;} ;
struct regulator_config {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int EPROBE_DEFER ;
 struct regulator_init_data* ERR_PTR (int) ;
 int dev_err (struct device*,char*,struct device_node*) ;
 struct regulator_init_data* of_get_regulator_init_data (struct device*,struct device_node*,struct regulator_desc const*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* regulator_of_get_init_node (struct device*,struct regulator_desc const*) ;
 int stub1 (struct device_node*,struct regulator_desc const*,struct regulator_config*) ;

struct regulator_init_data *regulator_of_get_init_data(struct device *dev,
         const struct regulator_desc *desc,
         struct regulator_config *config,
         struct device_node **node)
{
 struct device_node *child;
 struct regulator_init_data *init_data = ((void*)0);

 child = regulator_of_get_init_node(dev, desc);
 if (!child)
  return ((void*)0);

 init_data = of_get_regulator_init_data(dev, child, desc);
 if (!init_data) {
  dev_err(dev, "failed to parse DT for regulator %pOFn\n", child);
  goto error;
 }

 if (desc->of_parse_cb) {
  int ret;

  ret = desc->of_parse_cb(child, desc, config);
  if (ret) {
   if (ret == -EPROBE_DEFER) {
    of_node_put(child);
    return ERR_PTR(-EPROBE_DEFER);
   }
   dev_err(dev,
    "driver callback failed to parse DT for regulator %pOFn\n",
    child);
   goto error;
  }
 }

 *node = child;

 return init_data;

error:
 of_node_put(child);

 return ((void*)0);
}
