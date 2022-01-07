
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_sig_expr {int dummy; } ;


 scalar_t__ aspeed_expr_is_gpio (struct aspeed_sig_expr const*) ;

__attribute__((used)) static bool aspeed_gpio_in_exprs(const struct aspeed_sig_expr **exprs)
{
 if (!exprs)
  return 0;

 while (*exprs) {
  if (aspeed_expr_is_gpio(*exprs))
   return 1;
  exprs++;
 }

 return 0;
}
