
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int control; int threshold; } ;
struct tsens_priv {int num_sensors; TYPE_1__ ctx; struct regmap* tm_map; } ;
struct regmap {int dummy; } ;


 int CNTL_ADDR ;
 unsigned int EN ;
 unsigned int SLP_CLK_ENA ;
 unsigned int SLP_CLK_ENA_8660 ;
 int THRESHOLD_ADDR ;
 int regmap_read (struct regmap*,int ,int *) ;
 int regmap_update_bits (struct regmap*,int ,unsigned int,int ) ;

__attribute__((used)) static int suspend_8960(struct tsens_priv *priv)
{
 int ret;
 unsigned int mask;
 struct regmap *map = priv->tm_map;

 ret = regmap_read(map, THRESHOLD_ADDR, &priv->ctx.threshold);
 if (ret)
  return ret;

 ret = regmap_read(map, CNTL_ADDR, &priv->ctx.control);
 if (ret)
  return ret;

 if (priv->num_sensors > 1)
  mask = SLP_CLK_ENA | EN;
 else
  mask = SLP_CLK_ENA_8660 | EN;

 ret = regmap_update_bits(map, CNTL_ADDR, mask, 0);
 if (ret)
  return ret;

 return 0;
}
