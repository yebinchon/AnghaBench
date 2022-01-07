
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_sig_expr {int dummy; } ;
struct aspeed_pinmux_data {int dummy; } ;


 int aspeed_sig_expr_disable (struct aspeed_pinmux_data*,struct aspeed_sig_expr const*) ;

__attribute__((used)) static int aspeed_disable_sig(struct aspeed_pinmux_data *ctx,
         const struct aspeed_sig_expr **exprs)
{
 int ret = 0;

 if (!exprs)
  return 1;

 while (*exprs && !ret) {
  ret = aspeed_sig_expr_disable(ctx, *exprs);
  exprs++;
 }

 return ret;
}
