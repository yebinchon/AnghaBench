
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int * transfer_buffer; int * setup_packet; } ;


 int kfree (int *) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void free_urb(struct urb *urb)
{
 if (!urb)
  return;

 kfree(urb->setup_packet);
 urb->setup_packet = ((void*)0);

 kfree(urb->transfer_buffer);
 urb->transfer_buffer = ((void*)0);

 usb_free_urb(urb);
}
