
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
{
 return -ENXIO;
}
