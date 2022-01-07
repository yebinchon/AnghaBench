
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int pps_pending; int pps_status; int pps_complete; } ;


 int complete (int *) ;

__attribute__((used)) static void tcpm_pps_complete(struct tcpm_port *port, int result)
{
 if (port->pps_pending) {
  port->pps_status = result;
  port->pps_pending = 0;
  complete(&port->pps_complete);
 }
}
