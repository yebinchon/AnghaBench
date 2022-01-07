
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int state; } ;


 int HC_STATE_RUNNING ;

__attribute__((used)) static int octeon_usb_start(struct usb_hcd *hcd)
{
 hcd->state = HC_STATE_RUNNING;
 return 0;
}
