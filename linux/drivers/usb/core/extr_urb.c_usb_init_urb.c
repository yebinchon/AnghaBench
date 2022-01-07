
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int anchor_list; int kref; } ;


 int INIT_LIST_HEAD (int *) ;
 int kref_init (int *) ;
 int memset (struct urb*,int ,int) ;

void usb_init_urb(struct urb *urb)
{
 if (urb) {
  memset(urb, 0, sizeof(*urb));
  kref_init(&urb->kref);
  INIT_LIST_HEAD(&urb->anchor_list);
 }
}
