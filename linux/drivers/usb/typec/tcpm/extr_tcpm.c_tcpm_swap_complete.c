
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int swap_pending; int swap_status; int non_pd_role_swap; int swap_complete; } ;


 int complete (int *) ;

__attribute__((used)) static void tcpm_swap_complete(struct tcpm_port *port, int result)
{
 if (port->swap_pending) {
  port->swap_status = result;
  port->swap_pending = 0;
  port->non_pd_role_swap = 0;
  complete(&port->swap_complete);
 }
}
