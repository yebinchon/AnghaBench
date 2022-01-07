
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_hcd {int dummy; } ;
struct xhci_ep_ctx {int ep_info; } ;
struct urb {int interval; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ speed; int dev; } ;


 int EP_INTERVAL_TO_UFRAMES (int ) ;
 scalar_t__ USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_LOW ;
 int dev_dbg_ratelimited (int *,char*,int,char*,int,char*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void check_interval(struct xhci_hcd *xhci, struct urb *urb,
      struct xhci_ep_ctx *ep_ctx)
{
 int xhci_interval;
 int ep_interval;

 xhci_interval = EP_INTERVAL_TO_UFRAMES(le32_to_cpu(ep_ctx->ep_info));
 ep_interval = urb->interval;


 if (urb->dev->speed == USB_SPEED_LOW ||
   urb->dev->speed == USB_SPEED_FULL)
  ep_interval *= 8;




 if (xhci_interval != ep_interval) {
  dev_dbg_ratelimited(&urb->dev->dev,
    "Driver uses different interval (%d microframe%s) than xHCI (%d microframe%s)\n",
    ep_interval, ep_interval == 1 ? "" : "s",
    xhci_interval, xhci_interval == 1 ? "" : "s");
  urb->interval = xhci_interval;

  if (urb->dev->speed == USB_SPEED_LOW ||
    urb->dev->speed == USB_SPEED_FULL)
   urb->interval /= 8;
 }
}
