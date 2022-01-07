
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct lochnagar_pin_priv {int dev; TYPE_1__* lochnagar; } ;
struct TYPE_2__ {struct regmap* regmap; } ;


 int ENOSPC ;
 int LN2_NUM_GPIO_CHANNELS ;
 scalar_t__ LOCHNAGAR2_GPIO_CHANNEL1 ;
 unsigned int LOCHNAGAR2_GPIO_CHANNEL_SRC_MASK ;
 int dev_dbg (int ,char*,int,unsigned int) ;
 int regmap_read (struct regmap*,scalar_t__,unsigned int*) ;
 int regmap_update_bits (struct regmap*,scalar_t__,unsigned int,unsigned int) ;

__attribute__((used)) static int lochnagar2_get_gpio_chan(struct lochnagar_pin_priv *priv,
        unsigned int op)
{
 struct regmap *regmap = priv->lochnagar->regmap;
 unsigned int val;
 int free = -1;
 int i, ret;

 for (i = 0; i < LN2_NUM_GPIO_CHANNELS; i++) {
  ret = regmap_read(regmap, LOCHNAGAR2_GPIO_CHANNEL1 + i, &val);
  if (ret)
   return ret;

  val &= LOCHNAGAR2_GPIO_CHANNEL_SRC_MASK;

  if (val == op)
   return i + 1;

  if (free < 0 && !val)
   free = i;
 }

 if (free >= 0) {
  ret = regmap_update_bits(regmap,
      LOCHNAGAR2_GPIO_CHANNEL1 + free,
      LOCHNAGAR2_GPIO_CHANNEL_SRC_MASK, op);
  if (ret)
   return ret;

  free++;

  dev_dbg(priv->dev, "Set channel %d to 0x%x\n", free, op);

  return free;
 }

 return -ENOSPC;
}
