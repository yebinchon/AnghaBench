
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_init_data {int num_consumer_supplies; int * consumer_supplies; } ;
struct regulator_desc {int dummy; } ;
struct regulator_config {TYPE_1__* dev; struct device_node* of_node; struct arizona_ldo1* driver_data; } ;
struct device_node {int dummy; } ;
struct arizona_ldo1_pdata {struct regulator_init_data* init_data; } ;
struct arizona_ldo1 {int supply; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 struct regulator_init_data* of_get_regulator_init_data (TYPE_1__*,struct device_node*,struct regulator_desc const*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;

__attribute__((used)) static int arizona_ldo1_of_get_pdata(struct arizona_ldo1_pdata *pdata,
         struct regulator_config *config,
         const struct regulator_desc *desc,
         bool *external_dcvdd)
{
 struct arizona_ldo1 *ldo1 = config->driver_data;
 struct device_node *np = config->dev->of_node;
 struct device_node *init_node, *dcvdd_node;
 struct regulator_init_data *init_data;

 init_node = of_get_child_by_name(np, "ldo1");
 dcvdd_node = of_parse_phandle(np, "DCVDD-supply", 0);

 if (init_node) {
  config->of_node = init_node;

  init_data = of_get_regulator_init_data(config->dev, init_node,
             desc);
  if (init_data) {
   init_data->consumer_supplies = &ldo1->supply;
   init_data->num_consumer_supplies = 1;

   if (dcvdd_node && dcvdd_node != init_node)
    *external_dcvdd = 1;

   pdata->init_data = init_data;
  }
 } else if (dcvdd_node) {
  *external_dcvdd = 1;
 }

 of_node_put(dcvdd_node);

 return 0;
}
