
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_pin_desc {int dummy; } ;


 int aspeed_sig_expr_signal ;
 char* get_defined_attribute (struct aspeed_pin_desc const*,int ) ;

__attribute__((used)) static char *get_defined_signals(const struct aspeed_pin_desc *pdesc)
{
 return get_defined_attribute(pdesc, aspeed_sig_expr_signal);
}
