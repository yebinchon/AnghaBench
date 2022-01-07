
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int connected; int * partner; } ;


 int typec_unregister_partner (int *) ;

__attribute__((used)) static void tcpm_typec_disconnect(struct tcpm_port *port)
{
 if (port->connected) {
  typec_unregister_partner(port->partner);
  port->partner = ((void*)0);
  port->connected = 0;
 }
}
