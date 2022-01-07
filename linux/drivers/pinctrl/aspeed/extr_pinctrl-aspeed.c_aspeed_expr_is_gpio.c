
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_sig_expr {int signal; } ;


 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static bool aspeed_expr_is_gpio(const struct aspeed_sig_expr *expr)
{







 return strncmp(expr->signal, "GPIO", 4) == 0;
}
