
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_port {int dummy; } ;
typedef enum tb_port_cap { ____Placeholder_tb_port_cap } tb_port_cap ;


 int __tb_port_find_cap (struct tb_port*,int) ;
 int tb_port_dummy_read (struct tb_port*) ;
 int tb_port_enable_tmu (struct tb_port*,int) ;

int tb_port_find_cap(struct tb_port *port, enum tb_port_cap cap)
{
 int ret;

 ret = tb_port_enable_tmu(port, 1);
 if (ret)
  return ret;

 ret = __tb_port_find_cap(port, cap);

 tb_port_dummy_read(port);
 tb_port_enable_tmu(port, 0);

 return ret;
}
