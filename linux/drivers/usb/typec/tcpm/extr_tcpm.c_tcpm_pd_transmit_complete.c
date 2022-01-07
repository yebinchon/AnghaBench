
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int tx_status; int tx_complete; } ;
typedef enum tcpm_transmit_status { ____Placeholder_tcpm_transmit_status } tcpm_transmit_status ;


 int complete (int *) ;
 int tcpm_log (struct tcpm_port*,char*,int) ;

void tcpm_pd_transmit_complete(struct tcpm_port *port,
          enum tcpm_transmit_status status)
{
 tcpm_log(port, "PD TX complete, status: %u", status);
 port->tx_status = status;
 complete(&port->tx_complete);
}
