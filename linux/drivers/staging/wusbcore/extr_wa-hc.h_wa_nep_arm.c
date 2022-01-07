
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wahc {int nep_buffer_size; int nep_buffer; struct urb* nep_urb; } ;
struct urb {int transfer_buffer_length; int transfer_buffer; } ;
typedef int gfp_t ;


 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static inline int wa_nep_arm(struct wahc *wa, gfp_t gfp_mask)
{
 struct urb *urb = wa->nep_urb;
 urb->transfer_buffer = wa->nep_buffer;
 urb->transfer_buffer_length = wa->nep_buffer_size;
 return usb_submit_urb(urb, gfp_mask);
}
