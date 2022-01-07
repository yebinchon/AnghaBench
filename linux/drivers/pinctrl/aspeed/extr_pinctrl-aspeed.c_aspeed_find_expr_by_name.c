
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_sig_expr {int function; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static const struct aspeed_sig_expr *aspeed_find_expr_by_name(
  const struct aspeed_sig_expr **exprs, const char *name)
{
 while (*exprs) {
  if (strcmp((*exprs)->function, name) == 0)
   return *exprs;
  exprs++;
 }

 return ((void*)0);
}
