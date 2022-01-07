
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_buffer; int setup_packet; } ;


 int kfree (int ) ;

__attribute__((used)) static void usbctrl_async_callback(struct urb *urb)
{
 if (urb) {

  kfree(urb->setup_packet);

  kfree(urb->transfer_buffer);
 }
}
