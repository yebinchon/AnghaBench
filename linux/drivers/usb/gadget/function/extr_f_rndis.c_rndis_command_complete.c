
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_request {int length; int actual; scalar_t__ buf; struct f_rndis* context; } ;
struct usb_ep {int dummy; } ;
struct f_rndis {int params; } ;


 int pr_err (char*,int,int ,int ) ;
 int rndis_msg_parser (int ,int *) ;

__attribute__((used)) static void rndis_command_complete(struct usb_ep *ep, struct usb_request *req)
{
 struct f_rndis *rndis = req->context;
 int status;



 status = rndis_msg_parser(rndis->params, (u8 *) req->buf);
 if (status < 0)
  pr_err("RNDIS command error %d, %d/%d\n",
   status, req->actual, req->length);

}
