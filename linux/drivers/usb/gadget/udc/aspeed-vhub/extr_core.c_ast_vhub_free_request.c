
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct ast_vhub_req {int dummy; } ;


 int kfree (struct ast_vhub_req*) ;
 struct ast_vhub_req* to_ast_req (struct usb_request*) ;

void ast_vhub_free_request(struct usb_ep *u_ep, struct usb_request *u_req)
{
 struct ast_vhub_req *req = to_ast_req(u_req);

 kfree(req);
}
