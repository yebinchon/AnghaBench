
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int kref; } ;


 int hcd_release ;
 int kref_put (int *,int ) ;

void usb_put_hcd (struct usb_hcd *hcd)
{
 if (hcd)
  kref_put (&hcd->kref, hcd_release);
}
