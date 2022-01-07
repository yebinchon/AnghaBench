
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;
typedef int gfp_t ;


 int ENXIO ;

__attribute__((used)) static int urb_enqueue(struct usb_hcd *hcd, struct urb *urb, gfp_t mem_flags)
{
 return -ENXIO;
}
