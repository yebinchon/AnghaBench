
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpm_port {int dummy; } ;
struct TYPE_2__ {int header; int* data; } ;
struct pd_message {TYPE_1__ ext_msg; int header; } ;
typedef enum pd_ext_msg_type { ____Placeholder_pd_ext_msg_type } pd_ext_msg_type ;


 int GET_PPS_STATUS_SEND ;
 int PD_EXT_HDR_CHUNKED ;

 unsigned int PD_EXT_MAX_CHUNK_DATA ;





 int PD_MSG_CTRL_NOT_SUPP ;
 size_t USB_PD_EXT_SDB_EVENT_FLAGS ;
 int USB_PD_EXT_SDB_PPS_EVENTS ;
 unsigned int pd_ext_header_data_size_le (int) ;
 int pd_header_type_le (int ) ;
 int ready_state (struct tcpm_port*) ;
 int tcpm_log (struct tcpm_port*,char*,...) ;
 int tcpm_queue_message (struct tcpm_port*,int ) ;
 int tcpm_set_state (struct tcpm_port*,int ,int ) ;

__attribute__((used)) static void tcpm_pd_ext_msg_request(struct tcpm_port *port,
        const struct pd_message *msg)
{
 enum pd_ext_msg_type type = pd_header_type_le(msg->header);
 unsigned int data_size = pd_ext_header_data_size_le(msg->ext_msg.header);

 if (!(msg->ext_msg.header & PD_EXT_HDR_CHUNKED)) {
  tcpm_log(port, "Unchunked extended messages unsupported");
  return;
 }

 if (data_size > PD_EXT_MAX_CHUNK_DATA) {
  tcpm_log(port, "Chunk handling not yet supported");
  return;
 }

 switch (type) {
 case 128:




  if (msg->ext_msg.data[USB_PD_EXT_SDB_EVENT_FLAGS] &
      USB_PD_EXT_SDB_PPS_EVENTS)
   tcpm_set_state(port, GET_PPS_STATUS_SEND, 0);
  else
   tcpm_set_state(port, ready_state(port), 0);
  break;
 case 132:




  tcpm_set_state(port, ready_state(port), 0);
  break;
 case 129:
 case 136:
 case 135:
 case 141:
 case 134:
 case 133:
 case 131:
 case 130:
 case 138:
 case 137:
 case 139:
 case 140:
  tcpm_queue_message(port, PD_MSG_CTRL_NOT_SUPP);
  break;
 default:
  tcpm_log(port, "Unhandled extended message type %#x", type);
  break;
 }
}
