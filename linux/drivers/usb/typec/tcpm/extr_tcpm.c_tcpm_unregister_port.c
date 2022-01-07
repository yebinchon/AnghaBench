
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int wq; int role_sw; int typec_port; int * port_altmode; } ;


 int ARRAY_SIZE (int *) ;
 int destroy_workqueue (int ) ;
 int tcpm_debugfs_exit (struct tcpm_port*) ;
 int tcpm_reset_port (struct tcpm_port*) ;
 int typec_unregister_altmode (int ) ;
 int typec_unregister_port (int ) ;
 int usb_role_switch_put (int ) ;

void tcpm_unregister_port(struct tcpm_port *port)
{
 int i;

 tcpm_reset_port(port);
 for (i = 0; i < ARRAY_SIZE(port->port_altmode); i++)
  typec_unregister_altmode(port->port_altmode[i]);
 typec_unregister_port(port->typec_port);
 usb_role_switch_put(port->role_sw);
 tcpm_debugfs_exit(port);
 destroy_workqueue(port->wq);
}
