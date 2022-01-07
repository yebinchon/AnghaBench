
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_virt_ep {int ep_state; int * stream_info; } ;
struct xhci_virt_device {struct xhci_virt_ep* eps; } ;
struct xhci_hcd {int dummy; } ;


 int EP_HAS_STREAMS ;
 int xhci_free_stream_info (struct xhci_hcd*,int *) ;
 int xhci_get_endpoint_address (int) ;
 int xhci_warn (struct xhci_hcd*,char*,int ) ;

__attribute__((used)) static void xhci_check_bw_drop_ep_streams(struct xhci_hcd *xhci,
 struct xhci_virt_device *vdev, int i)
{
 struct xhci_virt_ep *ep = &vdev->eps[i];

 if (ep->ep_state & EP_HAS_STREAMS) {
  xhci_warn(xhci, "WARN: endpoint 0x%02x has streams on set_interface, freeing streams.\n",
    xhci_get_endpoint_address(i));
  xhci_free_stream_info(xhci, ep->stream_info);
  ep->stream_info = ((void*)0);
  ep->ep_state &= ~EP_HAS_STREAMS;
 }
}
