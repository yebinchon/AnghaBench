
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct aspeed_sig_expr {int ndescs; struct aspeed_sig_desc* descs; } ;
struct aspeed_sig_desc {size_t ip; } ;
struct aspeed_pinmux_data {int * maps; int dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct regmap* aspeed_g5_acquire_regmap (struct aspeed_pinmux_data*,size_t) ;
 int aspeed_sig_desc_eval (struct aspeed_sig_desc const*,int,int ) ;
 int dev_err (int ,char*,size_t) ;

__attribute__((used)) static int aspeed_g5_sig_expr_eval(struct aspeed_pinmux_data *ctx,
       const struct aspeed_sig_expr *expr,
       bool enabled)
{
 int ret;
 int i;

 for (i = 0; i < expr->ndescs; i++) {
  const struct aspeed_sig_desc *desc = &expr->descs[i];
  struct regmap *map;

  map = aspeed_g5_acquire_regmap(ctx, desc->ip);
  if (IS_ERR(map)) {
   dev_err(ctx->dev,
    "Failed to acquire regmap for IP block %d\n",
    desc->ip);
   return PTR_ERR(map);
  }

  ret = aspeed_sig_desc_eval(desc, enabled, ctx->maps[desc->ip]);
  if (ret <= 0)
   return ret;
 }

 return 1;
}
