
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_port {int dummy; } ;


 int tb_port_alloc_hopid (struct tb_port*,int,int,int) ;

int tb_port_alloc_out_hopid(struct tb_port *port, int min_hopid, int max_hopid)
{
 return tb_port_alloc_hopid(port, 0, min_hopid, max_hopid);
}
