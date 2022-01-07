
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int pipe; } ;
struct max3421_hcd {int hien; scalar_t__ curr_len; } ;


 int BIT (int ) ;
 int MAX3421_HI_RCVDAV_BIT ;
 int MAX3421_HXFR_BULK_IN (int) ;
 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 int usb_pipeendpoint (int ) ;

__attribute__((used)) static int
max3421_transfer_in(struct usb_hcd *hcd, struct urb *urb)
{
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);
 int epnum = usb_pipeendpoint(urb->pipe);

 max3421_hcd->curr_len = 0;
 max3421_hcd->hien |= BIT(MAX3421_HI_RCVDAV_BIT);
 return MAX3421_HXFR_BULK_IN(epnum);
}
