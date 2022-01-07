
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbg_cmd {scalar_t__ data_len; scalar_t__ is_read; struct f_uas* fu; } ;
struct usb_request {scalar_t__ length; int buf; struct usbg_cmd* context; int complete; } ;
struct usb_ep {scalar_t__ maxpacket; } ;
struct TYPE_4__ {int buf; } ;
struct bulk_cs_wrap {int Residue; } ;
struct TYPE_3__ {struct bulk_cs_wrap csw; } ;
struct f_uas {TYPE_2__ cmd; struct usb_ep* ep_in; struct usb_request* bot_req_out; struct usb_ep* ep_out; struct usb_request* bot_req_in; TYPE_1__ bot_status; } ;


 int GFP_KERNEL ;
 int bot_enqueue_sense_code (struct f_uas*,struct usbg_cmd*) ;
 int bot_err_compl ;
 int cpu_to_le32 (scalar_t__) ;
 int usb_ep_queue (struct usb_ep*,struct usb_request*,int ) ;

__attribute__((used)) static void bot_send_bad_status(struct usbg_cmd *cmd)
{
 struct f_uas *fu = cmd->fu;
 struct bulk_cs_wrap *csw = &fu->bot_status.csw;
 struct usb_request *req;
 struct usb_ep *ep;

 csw->Residue = cpu_to_le32(cmd->data_len);

 if (cmd->data_len) {
  if (cmd->is_read) {
   ep = fu->ep_in;
   req = fu->bot_req_in;
  } else {
   ep = fu->ep_out;
   req = fu->bot_req_out;
  }

  if (cmd->data_len > fu->ep_in->maxpacket) {
   req->length = ep->maxpacket;
   cmd->data_len -= ep->maxpacket;
  } else {
   req->length = cmd->data_len;
   cmd->data_len = 0;
  }
  req->complete = bot_err_compl;
  req->context = cmd;
  req->buf = fu->cmd.buf;
  usb_ep_queue(ep, req, GFP_KERNEL);
 } else {
  bot_enqueue_sense_code(fu, cmd);
 }
}
