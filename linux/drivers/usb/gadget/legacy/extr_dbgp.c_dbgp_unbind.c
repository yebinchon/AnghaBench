
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_gadget {int ep0; } ;
struct TYPE_4__ {TYPE_1__* req; int * serial; } ;
struct TYPE_3__ {int * buf; } ;


 TYPE_2__ dbgp ;
 int kfree (int *) ;
 int usb_ep_free_request (int ,TYPE_1__*) ;

__attribute__((used)) static void dbgp_unbind(struct usb_gadget *gadget)
{




 if (dbgp.req) {
  kfree(dbgp.req->buf);
  usb_ep_free_request(gadget->ep0, dbgp.req);
  dbgp.req = ((void*)0);
 }
}
