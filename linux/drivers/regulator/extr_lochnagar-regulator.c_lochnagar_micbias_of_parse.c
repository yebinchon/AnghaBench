
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_desc {int id; } ;
struct regulator_config {struct lochnagar* driver_data; } ;
struct lochnagar {int dev; int analogue_config_lock; int regmap; } ;
struct device_node {int dummy; } ;


 int LOCHNAGAR2_ANALOGUE_PATH_CTRL2 ;
 int LOCHNAGAR2_P1_MICBIAS_SRC_MASK ;
 int LOCHNAGAR2_P2_MICBIAS_SRC_SHIFT ;
 int LOCHNAGAR_MIC1VDD ;
 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_property_read_u32 (struct device_node*,char*,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;

__attribute__((used)) static int lochnagar_micbias_of_parse(struct device_node *np,
          const struct regulator_desc *desc,
          struct regulator_config *config)
{
 struct lochnagar *lochnagar = config->driver_data;
 int shift = (desc->id - LOCHNAGAR_MIC1VDD) *
      LOCHNAGAR2_P2_MICBIAS_SRC_SHIFT;
 int mask = LOCHNAGAR2_P1_MICBIAS_SRC_MASK << shift;
 unsigned int val;
 int ret;

 ret = of_property_read_u32(np, "cirrus,micbias-input", &val);
 if (ret >= 0) {
  mutex_lock(&lochnagar->analogue_config_lock);
  ret = regmap_update_bits(lochnagar->regmap,
      LOCHNAGAR2_ANALOGUE_PATH_CTRL2,
      mask, val << shift);
  mutex_unlock(&lochnagar->analogue_config_lock);
  if (ret < 0) {
   dev_err(lochnagar->dev,
    "Failed to update micbias source: %d\n", ret);
   return ret;
  }
 }

 return 0;
}
