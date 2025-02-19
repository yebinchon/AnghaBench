
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct syscfg_reset_controller_data {int nr_channels; TYPE_1__* channels; int wait_for_ack; int active_low; } ;
struct TYPE_5__ {int nr_resets; int of_node; int * ops; } ;
struct syscfg_reset_controller {TYPE_2__ rst; TYPE_3__* channels; int active_low; } ;
struct regmap_field {int dummy; } ;
typedef struct regmap_field regmap ;
struct device {int of_node; } ;
struct TYPE_6__ {struct regmap_field* ack; struct regmap_field* reset; } ;
struct TYPE_4__ {char* compatible; int ack; int reset; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap_field*) ;
 int PTR_ERR (struct regmap_field*) ;
 int dev_info (struct device*,char*) ;
 TYPE_3__* devm_kcalloc (struct device*,int,int,int ) ;
 struct syscfg_reset_controller* devm_kzalloc (struct device*,int,int ) ;
 struct regmap_field* devm_regmap_field_alloc (struct device*,struct regmap_field*,int ) ;
 int reset_controller_register (TYPE_2__*) ;
 int syscfg_reset_ops ;
 struct regmap_field* syscon_regmap_lookup_by_compatible (char const*) ;

__attribute__((used)) static int syscfg_reset_controller_register(struct device *dev,
    const struct syscfg_reset_controller_data *data)
{
 struct syscfg_reset_controller *rc;
 int i, err;

 rc = devm_kzalloc(dev, sizeof(*rc), GFP_KERNEL);
 if (!rc)
  return -ENOMEM;

 rc->channels = devm_kcalloc(dev, data->nr_channels,
        sizeof(*rc->channels), GFP_KERNEL);
 if (!rc->channels)
  return -ENOMEM;

 rc->rst.ops = &syscfg_reset_ops,
 rc->rst.of_node = dev->of_node;
 rc->rst.nr_resets = data->nr_channels;
 rc->active_low = data->active_low;

 for (i = 0; i < data->nr_channels; i++) {
  struct regmap *map;
  struct regmap_field *f;
  const char *compatible = data->channels[i].compatible;

  map = syscon_regmap_lookup_by_compatible(compatible);
  if (IS_ERR(map))
   return PTR_ERR(map);

  f = devm_regmap_field_alloc(dev, map, data->channels[i].reset);
  if (IS_ERR(f))
   return PTR_ERR(f);

  rc->channels[i].reset = f;

  if (!data->wait_for_ack)
   continue;

  f = devm_regmap_field_alloc(dev, map, data->channels[i].ack);
  if (IS_ERR(f))
   return PTR_ERR(f);

  rc->channels[i].ack = f;
 }

 err = reset_controller_register(&rc->rst);
 if (!err)
  dev_info(dev, "registered\n");

 return err;
}
