
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct device_node {struct device_node* parent; } ;
struct aspeed_pinmux_data {TYPE_1__* dev; struct regmap** maps; } ;
struct TYPE_2__ {int of_node; } ;


 int ASPEED_IP_GFX ;
 int ASPEED_IP_LPC ;
 int ASPEED_IP_SCU ;
 int ASPEED_NR_PINMUX_IPS ;
 int EINVAL ;
 int ENODEV ;
 struct regmap* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int WARN (int,char*) ;
 int dev_dbg (TYPE_1__*,char*) ;
 scalar_t__ likely (struct regmap*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int) ;
 struct regmap* syscon_node_to_regmap (struct device_node*) ;

__attribute__((used)) static struct regmap *aspeed_g5_acquire_regmap(struct aspeed_pinmux_data *ctx,
            int ip)
{
 if (ip == ASPEED_IP_SCU) {
  WARN(!ctx->maps[ip], "Missing SCU syscon!");
  return ctx->maps[ip];
 }

 if (ip >= ASPEED_NR_PINMUX_IPS)
  return ERR_PTR(-EINVAL);

 if (likely(ctx->maps[ip]))
  return ctx->maps[ip];

 if (ip == ASPEED_IP_GFX) {
  struct device_node *node;
  struct regmap *map;

  node = of_parse_phandle(ctx->dev->of_node,
     "aspeed,external-nodes", 0);
  if (node) {
   map = syscon_node_to_regmap(node);
   of_node_put(node);
   if (IS_ERR(map))
    return map;
  } else
   return ERR_PTR(-ENODEV);

  ctx->maps[ASPEED_IP_GFX] = map;
  dev_dbg(ctx->dev, "Acquired GFX regmap");
  return map;
 }

 if (ip == ASPEED_IP_LPC) {
  struct device_node *node;
  struct regmap *map;

  node = of_parse_phandle(ctx->dev->of_node,
     "aspeed,external-nodes", 1);
  if (node) {
   map = syscon_node_to_regmap(node->parent);
   of_node_put(node);
   if (IS_ERR(map))
    return map;
  } else
   return ERR_PTR(-ENODEV);

  ctx->maps[ASPEED_IP_LPC] = map;
  dev_dbg(ctx->dev, "Acquired LPC regmap");
  return map;
 }

 return ERR_PTR(-EINVAL);
}
