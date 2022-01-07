
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct max3421_hcd {int frame_number; } ;


 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;

__attribute__((used)) static int
max3421_get_frame_number(struct usb_hcd *hcd)
{
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);
 return max3421_hcd->frame_number;
}
