
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int data_length; int t_data_sg; int t_data_nents; } ;
struct usbg_cmd {int * data_buf; struct f_uas* fu; struct se_cmd se_cmd; } ;
struct usb_request {struct usbg_cmd* context; int length; int complete; int sg; int num_sgs; int * buf; } ;
struct usb_gadget {int sg_supported; } ;
struct f_uas {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct usb_gadget* fuas_to_gadget (struct f_uas*) ;
 int * kmalloc (int ,int ) ;
 int usbg_data_write_cmpl ;

__attribute__((used)) static int usbg_prepare_w_request(struct usbg_cmd *cmd, struct usb_request *req)
{
 struct se_cmd *se_cmd = &cmd->se_cmd;
 struct f_uas *fu = cmd->fu;
 struct usb_gadget *gadget = fuas_to_gadget(fu);

 if (!gadget->sg_supported) {
  cmd->data_buf = kmalloc(se_cmd->data_length, GFP_ATOMIC);
  if (!cmd->data_buf)
   return -ENOMEM;

  req->buf = cmd->data_buf;
 } else {
  req->buf = ((void*)0);
  req->num_sgs = se_cmd->t_data_nents;
  req->sg = se_cmd->t_data_sg;
 }

 req->complete = usbg_data_write_cmpl;
 req->length = se_cmd->data_length;
 req->context = cmd;
 return 0;
}
