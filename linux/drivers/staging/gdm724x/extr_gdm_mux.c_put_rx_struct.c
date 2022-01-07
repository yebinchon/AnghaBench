
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_cxt {int free_list_lock; int rx_free_list; } ;
struct mux_rx {int free_list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void put_rx_struct(struct rx_cxt *rx, struct mux_rx *r)
{
 unsigned long flags;

 spin_lock_irqsave(&rx->free_list_lock, flags);
 list_add_tail(&r->free_list, &rx->rx_free_list);
 spin_unlock_irqrestore(&rx->free_list_lock, flags);
}
