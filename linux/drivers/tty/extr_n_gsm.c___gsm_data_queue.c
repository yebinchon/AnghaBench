
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gsm_mux {scalar_t__ encoding; int tx_bytes; int tx_list; scalar_t__ initiator; } ;
struct gsm_msg {int* data; int len; int ctrl; int addr; int list; } ;
struct gsm_dlci {struct gsm_mux* gsm; } ;


 int EA ;
 int INIT_FCS ;
 int PF ;
 int UI ;
 int gsm_data_kick (struct gsm_mux*) ;
 int gsm_fcs_add_block (int,int*,int) ;
 int gsm_print_packet (char*,int,scalar_t__,int,int*,int) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void __gsm_data_queue(struct gsm_dlci *dlci, struct gsm_msg *msg)
{
 struct gsm_mux *gsm = dlci->gsm;
 u8 *dp = msg->data;
 u8 *fcs = dp + msg->len;


 if (gsm->encoding == 0) {
  if (msg->len < 128)
   *--dp = (msg->len << 1) | EA;
  else {
   *--dp = (msg->len >> 7);
   *--dp = (msg->len & 127) << 1;
  }
 }

 *--dp = msg->ctrl;
 if (gsm->initiator)
  *--dp = (msg->addr << 2) | 2 | EA;
 else
  *--dp = (msg->addr << 2) | EA;
 *fcs = gsm_fcs_add_block(INIT_FCS, dp , msg->data - dp);

 if (msg->ctrl == UI || msg->ctrl == (UI|PF))
  *fcs = gsm_fcs_add_block(*fcs, msg->data, msg->len);
 *fcs = 0xFF - *fcs;

 gsm_print_packet("Q> ", msg->addr, gsm->initiator, msg->ctrl,
       msg->data, msg->len);



 msg->len += (msg->data - dp) + 1;
 msg->data = dp;


 list_add_tail(&msg->list, &gsm->tx_list);
 gsm->tx_bytes += msg->len;
 gsm_data_kick(gsm);
}
