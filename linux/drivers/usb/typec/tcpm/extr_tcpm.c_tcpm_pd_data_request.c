
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {unsigned int nr_source_caps; unsigned int negotiated_rev; unsigned int nr_sink_caps; void* bist_request; int state; void** sink_caps; void* sink_request; int pwr_role; void** source_caps; } ;
struct pd_message {int * payload; int header; } ;
typedef enum pd_data_msg_type { ____Placeholder_pd_data_msg_type } pd_data_msg_type ;


 int BIST_RX ;
 unsigned int PD_MAX_REV ;
 int PD_MSG_CTRL_NOT_SUPP ;
 int PD_MSG_CTRL_REJECT ;
 unsigned int PD_REV10 ;
 int SNK_NEGOTIATE_CAPABILITIES ;
 int SNK_READY ;
 int SRC_NEGOTIATE_CAPABILITIES ;
 int SRC_READY ;
 int TYPEC_SINK ;
 int TYPEC_SOURCE ;
 void* le32_to_cpu (int ) ;
 unsigned int pd_header_cnt_le (int ) ;
 unsigned int pd_header_rev_le (int ) ;
 int pd_header_type_le (int ) ;
 int tcpm_handle_alert (struct tcpm_port*,int *,unsigned int) ;
 int tcpm_handle_vdm_request (struct tcpm_port*,int *,unsigned int) ;
 int tcpm_log (struct tcpm_port*,char*,int) ;
 int tcpm_log_source_caps (struct tcpm_port*) ;
 int tcpm_queue_message (struct tcpm_port*,int ) ;
 int tcpm_set_state (struct tcpm_port*,int ,int ) ;
 int tcpm_validate_caps (struct tcpm_port*,void**,unsigned int) ;

__attribute__((used)) static void tcpm_pd_data_request(struct tcpm_port *port,
     const struct pd_message *msg)
{
 enum pd_data_msg_type type = pd_header_type_le(msg->header);
 unsigned int cnt = pd_header_cnt_le(msg->header);
 unsigned int rev = pd_header_rev_le(msg->header);
 unsigned int i;

 switch (type) {
 case 129:
  if (port->pwr_role != TYPEC_SINK)
   break;

  for (i = 0; i < cnt; i++)
   port->source_caps[i] = le32_to_cpu(msg->payload[i]);

  port->nr_source_caps = cnt;

  tcpm_log_source_caps(port);

  tcpm_validate_caps(port, port->source_caps,
       port->nr_source_caps);






  if (rev == PD_REV10)
   break;

  if (rev < PD_MAX_REV)
   port->negotiated_rev = rev;
  tcpm_set_state(port, SNK_NEGOTIATE_CAPABILITIES, 0);
  break;
 case 131:
  if (port->pwr_role != TYPEC_SOURCE ||
      cnt != 1) {
   tcpm_queue_message(port, PD_MSG_CTRL_REJECT);
   break;
  }






  if (rev == PD_REV10) {
   tcpm_queue_message(port, PD_MSG_CTRL_REJECT);
   break;
  }

  if (rev < PD_MAX_REV)
   port->negotiated_rev = rev;

  port->sink_request = le32_to_cpu(msg->payload[0]);
  tcpm_set_state(port, SRC_NEGOTIATE_CAPABILITIES, 0);
  break;
 case 130:

  for (i = 0; i < cnt; i++)
   port->sink_caps[i] = le32_to_cpu(msg->payload[i]);
  port->nr_sink_caps = cnt;
  break;
 case 128:
  tcpm_handle_vdm_request(port, msg->payload, cnt);
  break;
 case 133:
  if (port->state == SRC_READY || port->state == SNK_READY) {
   port->bist_request = le32_to_cpu(msg->payload[0]);
   tcpm_set_state(port, BIST_RX, 0);
  }
  break;
 case 135:
  tcpm_handle_alert(port, msg->payload, cnt);
  break;
 case 134:
 case 132:

  tcpm_queue_message(port, PD_MSG_CTRL_NOT_SUPP);
  break;
 default:
  tcpm_log(port, "Unhandled data message type %#x", type);
  break;
 }
}
