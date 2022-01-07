
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct giveback_urb_bh {int bh; int head; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int usb_giveback_urb_bh ;

__attribute__((used)) static void init_giveback_urb_bh(struct giveback_urb_bh *bh)
{

 spin_lock_init(&bh->lock);
 INIT_LIST_HEAD(&bh->head);
 tasklet_init(&bh->bh, usb_giveback_urb_bh, (unsigned long)bh);
}
