
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {scalar_t__ hard_reset_count; int attached; } ;


 scalar_t__ tcpm_port_is_disconnected (struct tcpm_port*) ;
 int tcpm_reset_port (struct tcpm_port*) ;

__attribute__((used)) static void tcpm_detach(struct tcpm_port *port)
{
 if (!port->attached)
  return;

 if (tcpm_port_is_disconnected(port))
  port->hard_reset_count = 0;

 tcpm_reset_port(port);
}
