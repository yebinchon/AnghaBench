
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wahc {int dti_buf; scalar_t__ dti_urb; } ;


 int kfree (int ) ;
 int usb_kill_urb (scalar_t__) ;
 int usb_put_urb (scalar_t__) ;
 int wa_nep_destroy (struct wahc*) ;
 int wa_rpipes_destroy (struct wahc*) ;

void __wa_destroy(struct wahc *wa)
{
 if (wa->dti_urb) {
  usb_kill_urb(wa->dti_urb);
  usb_put_urb(wa->dti_urb);
 }
 kfree(wa->dti_buf);
 wa_nep_destroy(wa);
 wa_rpipes_destroy(wa);
}
