
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcpm_port {int message_id; int negotiated_rev; int data_role; int pwr_role; } ;
struct pd_message {int * payload; int header; } ;
typedef int msg ;


 int PD_DATA_REQUEST ;
 int PD_HEADER_LE (int ,int ,int ,int ,int ,int) ;
 int TCPC_TX_SOP ;
 int cpu_to_le32 (int ) ;
 int memset (struct pd_message*,int ,int) ;
 int tcpm_pd_build_request (struct tcpm_port*,int *) ;
 int tcpm_pd_transmit (struct tcpm_port*,int ,struct pd_message*) ;

__attribute__((used)) static int tcpm_pd_send_request(struct tcpm_port *port)
{
 struct pd_message msg;
 int ret;
 u32 rdo;

 ret = tcpm_pd_build_request(port, &rdo);
 if (ret < 0)
  return ret;

 memset(&msg, 0, sizeof(msg));
 msg.header = PD_HEADER_LE(PD_DATA_REQUEST,
      port->pwr_role,
      port->data_role,
      port->negotiated_rev,
      port->message_id, 1);
 msg.payload[0] = cpu_to_le32(rdo);

 return tcpm_pd_transmit(port, TCPC_TX_SOP, &msg);
}
