
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_cmd {int data_length; int t_data_sg; int t_data_nents; } ;
struct usbg_cmd {int state; int * data_buf; struct uas_stream* stream; struct f_uas* fu; struct se_cmd se_cmd; } ;
struct usb_gadget {int sg_supported; } ;
struct uas_stream {TYPE_1__* req_in; } ;
struct f_uas {int dummy; } ;
struct TYPE_2__ {struct usbg_cmd* context; int length; int complete; int sg; int num_sgs; int * buf; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int UASP_SEND_STATUS ;
 struct usb_gadget* fuas_to_gadget (struct f_uas*) ;
 int * kmalloc (int ,int ) ;
 int sg_copy_to_buffer (int ,int ,int *,int ) ;
 int uasp_status_data_cmpl ;

__attribute__((used)) static int uasp_prepare_r_request(struct usbg_cmd *cmd)
{
 struct se_cmd *se_cmd = &cmd->se_cmd;
 struct f_uas *fu = cmd->fu;
 struct usb_gadget *gadget = fuas_to_gadget(fu);
 struct uas_stream *stream = cmd->stream;

 if (!gadget->sg_supported) {
  cmd->data_buf = kmalloc(se_cmd->data_length, GFP_ATOMIC);
  if (!cmd->data_buf)
   return -ENOMEM;

  sg_copy_to_buffer(se_cmd->t_data_sg,
    se_cmd->t_data_nents,
    cmd->data_buf,
    se_cmd->data_length);

  stream->req_in->buf = cmd->data_buf;
 } else {
  stream->req_in->buf = ((void*)0);
  stream->req_in->num_sgs = se_cmd->t_data_nents;
  stream->req_in->sg = se_cmd->t_data_sg;
 }

 stream->req_in->complete = uasp_status_data_cmpl;
 stream->req_in->length = se_cmd->data_length;
 stream->req_in->context = cmd;

 cmd->state = UASP_SEND_STATUS;
 return 0;
}
