
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct ast_vhub_req {struct usb_request req; } ;
typedef int gfp_t ;


 struct ast_vhub_req* kzalloc (int,int ) ;

struct usb_request *ast_vhub_alloc_request(struct usb_ep *u_ep,
        gfp_t gfp_flags)
{
 struct ast_vhub_req *req;

 req = kzalloc(sizeof(*req), gfp_flags);
 if (!req)
  return ((void*)0);
 return &req->req;
}
