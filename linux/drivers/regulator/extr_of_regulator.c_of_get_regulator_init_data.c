
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_init_data {int dummy; } ;
struct regulator_desc {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 struct regulator_init_data* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ of_get_regulation_constraints (struct device*,struct device_node*,struct regulator_init_data**,struct regulator_desc const*) ;

struct regulator_init_data *of_get_regulator_init_data(struct device *dev,
       struct device_node *node,
       const struct regulator_desc *desc)
{
 struct regulator_init_data *init_data;

 if (!node)
  return ((void*)0);

 init_data = devm_kzalloc(dev, sizeof(*init_data), GFP_KERNEL);
 if (!init_data)
  return ((void*)0);

 if (of_get_regulation_constraints(dev, node, &init_data, desc))
  return ((void*)0);

 return init_data;
}
