
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int control; int threshold; } ;
struct tsens_priv {int num_sensors; TYPE_1__ ctx; struct regmap* tm_map; } ;
struct regmap {int dummy; } ;


 int CNTL_ADDR ;
 int CONFIG ;
 int CONFIG_ADDR ;
 int CONFIG_MASK ;
 int SW_RST ;
 int THRESHOLD_ADDR ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static int resume_8960(struct tsens_priv *priv)
{
 int ret;
 struct regmap *map = priv->tm_map;

 ret = regmap_update_bits(map, CNTL_ADDR, SW_RST, SW_RST);
 if (ret)
  return ret;





 if (priv->num_sensors > 1) {
  ret = regmap_update_bits(map, CONFIG_ADDR, CONFIG_MASK, CONFIG);
  if (ret)
   return ret;
 }

 ret = regmap_write(map, THRESHOLD_ADDR, priv->ctx.threshold);
 if (ret)
  return ret;

 ret = regmap_write(map, CNTL_ADDR, priv->ctx.control);
 if (ret)
  return ret;

 return 0;
}
