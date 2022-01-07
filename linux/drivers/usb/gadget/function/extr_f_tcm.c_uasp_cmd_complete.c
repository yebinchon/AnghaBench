
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {scalar_t__ status; int actual; int buf; struct f_uas* context; } ;
struct usb_ep {int dummy; } ;
struct TYPE_2__ {int req; } ;
struct f_uas {TYPE_1__ cmd; int ep_cmd; } ;


 int GFP_ATOMIC ;
 int usb_ep_queue (int ,int ,int ) ;
 int usbg_submit_command (struct f_uas*,int ,int ) ;

__attribute__((used)) static void uasp_cmd_complete(struct usb_ep *ep, struct usb_request *req)
{
 struct f_uas *fu = req->context;
 int ret;

 if (req->status < 0)
  return;

 ret = usbg_submit_command(fu, req->buf, req->actual);






 if (!ret)
  return;
 usb_ep_queue(fu->ep_cmd, fu->cmd.req, GFP_ATOMIC);
}
