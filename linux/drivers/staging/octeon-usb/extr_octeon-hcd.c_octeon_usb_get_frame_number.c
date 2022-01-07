
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct octeon_hcd {int dummy; } ;


 int cvmx_usb_get_frame_number (struct octeon_hcd*) ;
 struct octeon_hcd* hcd_to_octeon (struct usb_hcd*) ;

__attribute__((used)) static int octeon_usb_get_frame_number(struct usb_hcd *hcd)
{
 struct octeon_hcd *usb = hcd_to_octeon(hcd);

 return cvmx_usb_get_frame_number(usb);
}
