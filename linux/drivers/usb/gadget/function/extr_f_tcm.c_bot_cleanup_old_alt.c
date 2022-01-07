
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * buf; int * req; } ;
struct TYPE_3__ {int * req; } ;
struct f_uas {int flags; TYPE_2__ cmd; TYPE_1__ bot_status; int * bot_req_out; int * bot_req_in; int ep_in; int ep_out; } ;


 int USBG_ENABLED ;
 int kfree (int *) ;
 int usb_ep_disable (int ) ;
 int usb_ep_free_request (int ,int *) ;

__attribute__((used)) static void bot_cleanup_old_alt(struct f_uas *fu)
{
 if (!(fu->flags & USBG_ENABLED))
  return;

 usb_ep_disable(fu->ep_in);
 usb_ep_disable(fu->ep_out);

 if (!fu->bot_req_in)
  return;

 usb_ep_free_request(fu->ep_in, fu->bot_req_in);
 usb_ep_free_request(fu->ep_out, fu->bot_req_out);
 usb_ep_free_request(fu->ep_out, fu->cmd.req);
 usb_ep_free_request(fu->ep_in, fu->bot_status.req);

 kfree(fu->cmd.buf);

 fu->bot_req_in = ((void*)0);
 fu->bot_req_out = ((void*)0);
 fu->cmd.req = ((void*)0);
 fu->bot_status.req = ((void*)0);
 fu->cmd.buf = ((void*)0);
}
