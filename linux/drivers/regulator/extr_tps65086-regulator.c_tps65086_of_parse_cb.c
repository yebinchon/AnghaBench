
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_desc {int id; } ;
struct regulator_config {int dev; int regmap; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {void* n_linear_ranges; void* linear_ranges; } ;
struct TYPE_4__ {int decay_mask; int decay_reg; TYPE_1__ desc; } ;


 void* ARRAY_SIZE (void*) ;






 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 TYPE_2__* regulators ;
 void* tps65086_buck126_25mv_ranges ;
 void* tps65086_buck345_25mv_ranges ;

__attribute__((used)) static int tps65086_of_parse_cb(struct device_node *node,
    const struct regulator_desc *desc,
    struct regulator_config *config)
{
 int ret;


 if (of_property_read_bool(node, "ti,regulator-step-size-25mv")) {
  switch (desc->id) {
  case 133:
  case 132:
  case 128:
   regulators[desc->id].desc.linear_ranges =
    tps65086_buck126_25mv_ranges;
   regulators[desc->id].desc.n_linear_ranges =
    ARRAY_SIZE(tps65086_buck126_25mv_ranges);
   break;
  case 131:
  case 130:
  case 129:
   regulators[desc->id].desc.linear_ranges =
    tps65086_buck345_25mv_ranges;
   regulators[desc->id].desc.n_linear_ranges =
    ARRAY_SIZE(tps65086_buck345_25mv_ranges);
   break;
  default:
   dev_warn(config->dev, "25mV step mode only valid for BUCK regulators\n");
  }
 }


 if (desc->id <= 128 && of_property_read_bool(node, "ti,regulator-decay")) {
  ret = regmap_write_bits(config->regmap,
     regulators[desc->id].decay_reg,
     regulators[desc->id].decay_mask,
     regulators[desc->id].decay_mask);
  if (ret) {
   dev_err(config->dev, "Error setting decay\n");
   return ret;
  }
 }

 return 0;
}
