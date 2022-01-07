
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int args_count; int * args; int np; } ;


 int pr_cont (char*,...) ;
 int printk (char*,char const*,int ) ;

void of_print_phandle_args(const char *msg, const struct of_phandle_args *args)
{
 int i;
 printk("%s %pOF", msg, args->np);
 for (i = 0; i < args->args_count; i++) {
  const char delim = i ? ',' : ':';

  pr_cont("%c%08x", delim, args->args[i]);
 }
 pr_cont("\n");
}
