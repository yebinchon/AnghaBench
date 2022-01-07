
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct xhci_hcd {int dummy; } ;
struct TYPE_2__ {int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_1__ desc; int ss_ep_comp; } ;
struct usb_device {int slot_id; } ;


 int EINVAL ;
 unsigned int usb_ss_max_streams (int *) ;
 int xhci_check_streams_endpoint (struct xhci_hcd*,struct usb_device*,struct usb_host_endpoint*,int ) ;
 int xhci_dbg (struct xhci_hcd*,char*,int ,unsigned int) ;
 unsigned int xhci_get_endpoint_flag (TYPE_1__*) ;

__attribute__((used)) static int xhci_calculate_streams_and_bitmask(struct xhci_hcd *xhci,
  struct usb_device *udev,
  struct usb_host_endpoint **eps, unsigned int num_eps,
  unsigned int *num_streams, u32 *changed_ep_bitmask)
{
 unsigned int max_streams;
 unsigned int endpoint_flag;
 int i;
 int ret;

 for (i = 0; i < num_eps; i++) {
  ret = xhci_check_streams_endpoint(xhci, udev,
    eps[i], udev->slot_id);
  if (ret < 0)
   return ret;

  max_streams = usb_ss_max_streams(&eps[i]->ss_ep_comp);
  if (max_streams < (*num_streams - 1)) {
   xhci_dbg(xhci, "Ep 0x%x only supports %u stream IDs.\n",
     eps[i]->desc.bEndpointAddress,
     max_streams);
   *num_streams = max_streams+1;
  }

  endpoint_flag = xhci_get_endpoint_flag(&eps[i]->desc);
  if (*changed_ep_bitmask & endpoint_flag)
   return -EINVAL;
  *changed_ep_bitmask |= endpoint_flag;
 }
 return 0;
}
