
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_port {int in_hopids; } ;


 int ida_simple_remove (int *,int) ;

void tb_port_release_in_hopid(struct tb_port *port, int hopid)
{
 ida_simple_remove(&port->in_hopids, hopid);
}
