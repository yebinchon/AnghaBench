
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int nr_snk_pdo; int * snk_pdo; int message_id; int negotiated_rev; int data_role; int pwr_role; } ;
struct pd_message {int * payload; void* header; } ;
typedef int msg ;


 int PD_CTRL_REJECT ;
 int PD_DATA_SINK_CAP ;
 void* PD_HEADER_LE (int ,int ,int ,int ,int ,int) ;
 int TCPC_TX_SOP ;
 int cpu_to_le32 (int ) ;
 int memset (struct pd_message*,int ,int) ;
 int tcpm_pd_transmit (struct tcpm_port*,int ,struct pd_message*) ;

__attribute__((used)) static int tcpm_pd_send_sink_caps(struct tcpm_port *port)
{
 struct pd_message msg;
 int i;

 memset(&msg, 0, sizeof(msg));
 if (!port->nr_snk_pdo) {

  msg.header = PD_HEADER_LE(PD_CTRL_REJECT,
       port->pwr_role,
       port->data_role,
       port->negotiated_rev,
       port->message_id, 0);
 } else {
  msg.header = PD_HEADER_LE(PD_DATA_SINK_CAP,
       port->pwr_role,
       port->data_role,
       port->negotiated_rev,
       port->message_id,
       port->nr_snk_pdo);
 }
 for (i = 0; i < port->nr_snk_pdo; i++)
  msg.payload[i] = cpu_to_le32(port->snk_pdo[i]);

 return tcpm_pd_transmit(port, TCPC_TX_SOP, &msg);
}
