
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aspeed_sig_expr {int ndescs; struct aspeed_sig_desc* descs; } ;
struct aspeed_sig_desc {int enable; int disable; int mask; size_t ip; scalar_t__ reg; } ;
struct aspeed_pinmux_data {int * maps; } ;


 size_t ASPEED_IP_SCU ;
 int BIT (int) ;
 int ENODEV ;
 int EPERM ;
 scalar_t__ HW_STRAP1 ;
 scalar_t__ HW_STRAP2 ;
 int __ffs (int) ;
 int aspeed_sig_expr_eval (struct aspeed_pinmux_data*,struct aspeed_sig_expr const*,int) ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;

__attribute__((used)) static int aspeed_g4_sig_expr_set(struct aspeed_pinmux_data *ctx,
      const struct aspeed_sig_expr *expr,
      bool enable)
{
 int ret;
 int i;

 for (i = 0; i < expr->ndescs; i++) {
  const struct aspeed_sig_desc *desc = &expr->descs[i];
  u32 pattern = enable ? desc->enable : desc->disable;
  u32 val = (pattern << __ffs(desc->mask));

  if (!ctx->maps[desc->ip])
   return -ENODEV;
  if (desc->ip == ASPEED_IP_SCU && desc->reg == HW_STRAP1 &&
      !(desc->mask & (BIT(21) | BIT(22))))
   continue;

  if (desc->ip == ASPEED_IP_SCU && desc->reg == HW_STRAP2)
   continue;

  ret = regmap_update_bits(ctx->maps[desc->ip], desc->reg,
      desc->mask, val);

  if (ret)
   return ret;
 }

 ret = aspeed_sig_expr_eval(ctx, expr, enable);
 if (ret < 0)
  return ret;

 if (!ret)
  return -EPERM;

 return 0;
}
