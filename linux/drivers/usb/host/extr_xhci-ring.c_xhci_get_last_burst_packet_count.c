
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xhci_hcd {int hci_version; } ;
struct urb {TYPE_3__* ep; TYPE_1__* dev; } ;
struct TYPE_5__ {unsigned int bMaxBurst; } ;
struct TYPE_6__ {TYPE_2__ ss_ep_comp; } ;
struct TYPE_4__ {scalar_t__ speed; } ;


 scalar_t__ USB_SPEED_SUPER ;

__attribute__((used)) static unsigned int xhci_get_last_burst_packet_count(struct xhci_hcd *xhci,
  struct urb *urb, unsigned int total_packet_count)
{
 unsigned int max_burst;
 unsigned int residue;

 if (xhci->hci_version < 0x100)
  return 0;

 if (urb->dev->speed >= USB_SPEED_SUPER) {

  max_burst = urb->ep->ss_ep_comp.bMaxBurst;
  residue = total_packet_count % (max_burst + 1);



  if (residue == 0)
   return max_burst;
  return residue - 1;
 }
 if (total_packet_count == 0)
  return 0;
 return total_packet_count - 1;
}
