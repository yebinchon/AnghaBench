
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int add_preferred_console (char*,int,char*) ;
 scalar_t__ console_set_on_cmdline ;
 struct device_node* of_stdout ;
 scalar_t__ of_stdout_options ;

bool of_console_check(struct device_node *dn, char *name, int index)
{
 if (!dn || dn != of_stdout || console_set_on_cmdline)
  return 0;





 return !add_preferred_console(name, index, (char *)of_stdout_options);
}
