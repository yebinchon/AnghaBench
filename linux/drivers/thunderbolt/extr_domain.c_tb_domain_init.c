
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_register (int *) ;
 int tb_bus_type ;
 int tb_xdomain_exit () ;
 int tb_xdomain_init () ;

int tb_domain_init(void)
{
 int ret;

 ret = tb_xdomain_init();
 if (ret)
  return ret;
 ret = bus_register(&tb_bus_type);
 if (ret)
  tb_xdomain_exit();

 return ret;
}
