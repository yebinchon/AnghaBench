
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_sig_expr {char const* function; } ;



__attribute__((used)) static const char *aspeed_sig_expr_function(const struct aspeed_sig_expr *expr)
{
 return expr->function;
}
