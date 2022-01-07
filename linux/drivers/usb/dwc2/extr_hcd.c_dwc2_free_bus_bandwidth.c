
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_hcd {int dummy; } ;
struct usb_bus {int bandwidth_allocated; int bandwidth_int_reqs; int bandwidth_isoc_reqs; } ;
struct urb {int interval; int pipe; } ;


 scalar_t__ PIPE_ISOCHRONOUS ;
 struct usb_bus* hcd_to_bus (struct usb_hcd*) ;
 scalar_t__ usb_pipetype (int ) ;

__attribute__((used)) static void dwc2_free_bus_bandwidth(struct usb_hcd *hcd, u16 bw,
        struct urb *urb)
{
 struct usb_bus *bus = hcd_to_bus(hcd);

 if (urb->interval)
  bus->bandwidth_allocated -= bw / urb->interval;
 if (usb_pipetype(urb->pipe) == PIPE_ISOCHRONOUS)
  bus->bandwidth_isoc_reqs--;
 else
  bus->bandwidth_int_reqs--;
}
