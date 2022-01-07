
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int kref; } ;


 int kref_put (int *,int ) ;
 int urb_destroy ;

void usb_free_urb(struct urb *urb)
{
 if (urb)
  kref_put(&urb->kref, urb_destroy);
}
