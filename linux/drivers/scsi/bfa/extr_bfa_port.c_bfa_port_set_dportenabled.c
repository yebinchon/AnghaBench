
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_port_s {int dport_enabled; } ;
typedef int bfa_boolean_t ;



void
bfa_port_set_dportenabled(struct bfa_port_s *port, bfa_boolean_t enabled)
{
 port->dport_enabled = enabled;
}
