
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int vdm_state; int vdo_count; int vdm_retries; int vdo_retry; int * vdo_data; int vdm_state_machine; int wq; int message_id; int negotiated_rev; int data_role; int pwr_role; int state; int attached; } ;
struct pd_message {int * payload; int header; } ;
typedef int msg ;


 int PD_DATA_VENDOR_DEF ;
 int PD_HEADER_LE (int ,int ,int ,int ,int ,int) ;
 int SNK_READY ;
 int SRC_READY ;
 int TCPC_TX_SOP ;

 int VDM_STATE_ERR_BUSY ;

 int VDM_STATE_ERR_TMOUT ;


 int cpu_to_le32 (int ) ;
 int memset (struct pd_message*,int ,int) ;
 int mod_delayed_work (int ,int *,unsigned long) ;
 int tcpm_log (struct tcpm_port*,char*) ;
 int tcpm_pd_transmit (struct tcpm_port*,int ,struct pd_message*) ;
 unsigned long vdm_ready_timeout (int ) ;

__attribute__((used)) static void vdm_run_state_machine(struct tcpm_port *port)
{
 struct pd_message msg;
 int i, res;

 switch (port->vdm_state) {
 case 129:

  if (!port->attached) {
   port->vdm_state = VDM_STATE_ERR_BUSY;
   break;
  }





  if (port->state != SRC_READY && port->state != SNK_READY)
   break;


  memset(&msg, 0, sizeof(msg));
  msg.header = PD_HEADER_LE(PD_DATA_VENDOR_DEF,
       port->pwr_role,
       port->data_role,
       port->negotiated_rev,
       port->message_id, port->vdo_count);
  for (i = 0; i < port->vdo_count; i++)
   msg.payload[i] = cpu_to_le32(port->vdo_data[i]);
  res = tcpm_pd_transmit(port, TCPC_TX_SOP, &msg);
  if (res < 0) {
   port->vdm_state = 130;
  } else {
   unsigned long timeout;

   port->vdm_retries = 0;
   port->vdm_state = 131;
   timeout = vdm_ready_timeout(port->vdo_data[0]);
   mod_delayed_work(port->wq, &port->vdm_state_machine,
      timeout);
  }
  break;
 case 128:
  port->vdo_data[0] = port->vdo_retry;
  port->vdo_count = 1;
  port->vdm_state = 129;
  break;
 case 131:
  port->vdm_state = VDM_STATE_ERR_TMOUT;
  break;
 case 130:






  if (port->vdm_retries < 3) {
   tcpm_log(port, "VDM Tx error, retry");
   port->vdm_retries++;
   port->vdm_state = 129;
  }
  break;
 default:
  break;
 }
}
