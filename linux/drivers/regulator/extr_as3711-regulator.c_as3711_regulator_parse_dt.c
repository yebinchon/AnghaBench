
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_regulator_match {struct device_node* of_node; int init_data; } ;
struct device_node {int dummy; } ;
struct device {TYPE_1__* parent; } ;
struct as3711_regulator_pdata {int * init_data; } ;
struct TYPE_2__ {int of_node; } ;


 int ENODEV ;
 struct of_regulator_match* as3711_regulator_matches ;
 int dev_err (struct device*,char*,...) ;
 struct as3711_regulator_pdata* dev_get_platdata (struct device*) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_node_put (struct device_node*) ;
 int of_regulator_match (TYPE_1__*,struct device_node*,struct of_regulator_match*,int const) ;

__attribute__((used)) static int as3711_regulator_parse_dt(struct device *dev,
    struct device_node **of_node, const int count)
{
 struct as3711_regulator_pdata *pdata = dev_get_platdata(dev);
 struct device_node *regulators =
  of_get_child_by_name(dev->parent->of_node, "regulators");
 struct of_regulator_match *match;
 int ret, i;

 if (!regulators) {
  dev_err(dev, "regulator node not found\n");
  return -ENODEV;
 }

 ret = of_regulator_match(dev->parent, regulators,
     as3711_regulator_matches, count);
 of_node_put(regulators);
 if (ret < 0) {
  dev_err(dev, "Error parsing regulator init data: %d\n", ret);
  return ret;
 }

 for (i = 0, match = as3711_regulator_matches; i < count; i++, match++)
  if (match->of_node) {
   pdata->init_data[i] = match->init_data;
   of_node[i] = match->of_node;
  }

 return 0;
}
