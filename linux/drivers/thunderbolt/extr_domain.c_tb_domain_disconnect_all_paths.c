
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int dummy; } ;


 int bus_for_each_dev (int *,int *,struct tb*,int ) ;
 int disconnect_xdomain ;
 int tb_bus_type ;
 int tb_domain_disconnect_pcie_paths (struct tb*) ;

int tb_domain_disconnect_all_paths(struct tb *tb)
{
 int ret;

 ret = tb_domain_disconnect_pcie_paths(tb);
 if (ret)
  return ret;

 return bus_for_each_dev(&tb_bus_type, ((void*)0), tb, disconnect_xdomain);
}
