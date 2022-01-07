
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_unregister (int *) ;
 int ida_destroy (int *) ;
 int tb_bus_type ;
 int tb_domain_ida ;
 int tb_switch_exit () ;
 int tb_xdomain_exit () ;

void tb_domain_exit(void)
{
 bus_unregister(&tb_bus_type);
 ida_destroy(&tb_domain_ida);
 tb_switch_exit();
 tb_xdomain_exit();
}
