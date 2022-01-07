
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_wwan_port_private {int out_busy; struct urb** out_urbs; } ;
struct urb {int dummy; } ;


 int N_OUT_URB ;
 int clear_bit (int,int *) ;

__attribute__((used)) static void unbusy_queued_urb(struct urb *urb,
     struct usb_wwan_port_private *portdata)
{
 int i;

 for (i = 0; i < N_OUT_URB; i++) {
  if (urb == portdata->out_urbs[i]) {
   clear_bit(i, &portdata->out_busy);
   break;
  }
 }
}
