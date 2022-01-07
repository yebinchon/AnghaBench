
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_rx {int free_list; } ;
struct rx_cxt {int rx_lock; int avail_count; int free_list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void put_rx_struct(struct rx_cxt *rx, struct usb_rx *r)
{
 unsigned long flags;

 spin_lock_irqsave(&rx->rx_lock, flags);

 list_add_tail(&r->free_list, &rx->free_list);
 rx->avail_count++;

 spin_unlock_irqrestore(&rx->rx_lock, flags);
}
