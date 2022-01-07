
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_port {struct tb_port const* dual_link_port; int sw; } ;


 struct tb_port* tb_upstream_port (int ) ;

__attribute__((used)) static inline bool tb_is_upstream_port(const struct tb_port *port)
{
 const struct tb_port *upstream_port = tb_upstream_port(port->sw);
 return port == upstream_port || port->dual_link_port == upstream_port;
}
