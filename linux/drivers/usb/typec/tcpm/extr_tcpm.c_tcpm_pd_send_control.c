
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int message_id; int negotiated_rev; int data_role; int pwr_role; } ;
struct pd_message {int header; } ;
typedef int msg ;
typedef enum pd_ctrl_msg_type { ____Placeholder_pd_ctrl_msg_type } pd_ctrl_msg_type ;


 int PD_HEADER_LE (int,int ,int ,int ,int ,int ) ;
 int TCPC_TX_SOP ;
 int memset (struct pd_message*,int ,int) ;
 int tcpm_pd_transmit (struct tcpm_port*,int ,struct pd_message*) ;

__attribute__((used)) static int tcpm_pd_send_control(struct tcpm_port *port,
    enum pd_ctrl_msg_type type)
{
 struct pd_message msg;

 memset(&msg, 0, sizeof(msg));
 msg.header = PD_HEADER_LE(type, port->pwr_role,
      port->data_role,
      port->negotiated_rev,
      port->message_id, 0);

 return tcpm_pd_transmit(port, TCPC_TX_SOP, &msg);
}
