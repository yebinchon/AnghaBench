
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_sig_expr {int dummy; } ;
struct aspeed_pinmux_data {int dummy; } ;


 int aspeed_sig_expr_eval (struct aspeed_pinmux_data*,struct aspeed_sig_expr const*,int) ;
 int aspeed_sig_expr_set (struct aspeed_pinmux_data*,struct aspeed_sig_expr const*,int) ;

__attribute__((used)) static int aspeed_sig_expr_disable(struct aspeed_pinmux_data *ctx,
       const struct aspeed_sig_expr *expr)
{
 int ret;

 ret = aspeed_sig_expr_eval(ctx, expr, 1);
 if (ret < 0)
  return ret;

 if (ret)
  return aspeed_sig_expr_set(ctx, expr, 0);

 return 0;
}
