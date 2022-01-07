
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int reject; } ;


 int atomic_inc (int *) ;

void usb_block_urb(struct urb *urb)
{
 if (!urb)
  return;

 atomic_inc(&urb->reject);
}
