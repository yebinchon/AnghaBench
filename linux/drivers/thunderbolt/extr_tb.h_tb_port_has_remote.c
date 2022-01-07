
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_port {scalar_t__ link_nr; scalar_t__ dual_link_port; int remote; } ;


 scalar_t__ tb_is_upstream_port (struct tb_port const*) ;

__attribute__((used)) static inline bool tb_port_has_remote(const struct tb_port *port)
{
 if (tb_is_upstream_port(port))
  return 0;
 if (!port->remote)
  return 0;
 if (port->dual_link_port && port->link_nr)
  return 0;

 return 1;
}
