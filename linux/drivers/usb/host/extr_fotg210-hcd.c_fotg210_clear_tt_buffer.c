
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct usb_device {int dev; } ;
struct urb {TYPE_2__* dev; int pipe; } ;
struct fotg210_qh {int clearing_tt; } ;
struct fotg210_hcd {int dummy; } ;
struct TYPE_7__ {struct usb_device* root_hub; } ;
struct TYPE_8__ {TYPE_3__ self; } ;
struct TYPE_6__ {TYPE_1__* tt; int devnum; int ttport; } ;
struct TYPE_5__ {struct usb_device* hub; } ;


 int dev_dbg (int *,char*,int ,int ,int ,int ) ;
 TYPE_4__* fotg210_to_hcd (struct fotg210_hcd*) ;
 scalar_t__ usb_hub_clear_tt_buffer (struct urb*) ;
 int usb_pipeendpoint (int ) ;
 int usb_pipeint (int ) ;

__attribute__((used)) static void fotg210_clear_tt_buffer(struct fotg210_hcd *fotg210,
  struct fotg210_qh *qh, struct urb *urb, u32 token)
{







 if (urb->dev->tt && !usb_pipeint(urb->pipe) && !qh->clearing_tt) {
  struct usb_device *tt = urb->dev->tt->hub;

  dev_dbg(&tt->dev,
    "clear tt buffer port %d, a%d ep%d t%08x\n",
    urb->dev->ttport, urb->dev->devnum,
    usb_pipeendpoint(urb->pipe), token);

  if (urb->dev->tt->hub !=
    fotg210_to_hcd(fotg210)->self.root_hub) {
   if (usb_hub_clear_tt_buffer(urb) == 0)
    qh->clearing_tt = 1;
  }
 }
}
