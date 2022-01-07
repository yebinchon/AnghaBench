
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct xhci_hcd {int hci_version; int quirks; } ;
struct urb {TYPE_1__* ep; } ;
struct TYPE_2__ {int desc; } ;


 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int XHCI_MTK_HOST ;
 unsigned int usb_endpoint_maxp (int *) ;

__attribute__((used)) static u32 xhci_td_remainder(struct xhci_hcd *xhci, int transferred,
         int trb_buff_len, unsigned int td_total_len,
         struct urb *urb, bool more_trbs_coming)
{
 u32 maxp, total_packet_count;


 if (xhci->hci_version < 0x100 && !(xhci->quirks & XHCI_MTK_HOST))
  return ((td_total_len - transferred) >> 10);


 if (!more_trbs_coming || (transferred == 0 && trb_buff_len == 0) ||
     trb_buff_len == td_total_len)
  return 0;


 if ((xhci->quirks & XHCI_MTK_HOST) && (xhci->hci_version < 0x100))
  trb_buff_len = 0;

 maxp = usb_endpoint_maxp(&urb->ep->desc);
 total_packet_count = DIV_ROUND_UP(td_total_len, maxp);


 return (total_packet_count - ((transferred + trb_buff_len) / maxp));
}
