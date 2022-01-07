
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcpm_port {int state; } ;
typedef int __le32 ;


 int GET_STATUS_SEND ;
 int PD_MSG_CTRL_WAIT ;


 unsigned int USB_PD_ADO_TYPE_BATT_STATUS_CHANGE ;
 int le32_to_cpu (int const) ;
 int tcpm_log (struct tcpm_port*,char*) ;
 int tcpm_queue_message (struct tcpm_port*,int ) ;
 int tcpm_set_state (struct tcpm_port*,int ,int ) ;
 unsigned int usb_pd_ado_type (int ) ;

__attribute__((used)) static void tcpm_handle_alert(struct tcpm_port *port, const __le32 *payload,
         int cnt)
{
 u32 p0 = le32_to_cpu(payload[0]);
 unsigned int type = usb_pd_ado_type(p0);

 if (!type) {
  tcpm_log(port, "Alert message received with no type");
  return;
 }


 if (!(type & USB_PD_ADO_TYPE_BATT_STATUS_CHANGE)) {
  switch (port->state) {
  case 128:
  case 129:
   tcpm_set_state(port, GET_STATUS_SEND, 0);
   break;
  default:
   tcpm_queue_message(port, PD_MSG_CTRL_WAIT);
   break;
  }
 }
}
