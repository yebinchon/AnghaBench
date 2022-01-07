
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_request {int length; int actual; int status; } ;
struct usb_ep {int dummy; } ;
struct TYPE_4__ {TYPE_1__* gadget; } ;
struct TYPE_3__ {int dev; } ;


 TYPE_2__ dbgp ;
 int dev_dbg (int *,char*,int ,int ,int ) ;

__attribute__((used)) static void dbgp_setup_complete(struct usb_ep *ep,
    struct usb_request *req)
{
 dev_dbg(&dbgp.gadget->dev, "setup complete: %d, %d/%d\n",
  req->status, req->actual, req->length);
}
