
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int queued_message; int state_machine; int wq; } ;
typedef enum pd_msg_request { ____Placeholder_pd_msg_request } pd_msg_request ;


 int mod_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void tcpm_queue_message(struct tcpm_port *port,
          enum pd_msg_request message)
{
 port->queued_message = message;
 mod_delayed_work(port->wq, &port->state_machine, 0);
}
