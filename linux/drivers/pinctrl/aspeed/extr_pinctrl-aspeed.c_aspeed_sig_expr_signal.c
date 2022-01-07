
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_sig_expr {char const* signal; } ;



__attribute__((used)) static const char *aspeed_sig_expr_signal(const struct aspeed_sig_expr *expr)
{
 return expr->signal;
}
