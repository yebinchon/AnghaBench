
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int scan_finished; int scan_lock; int scan_wait_queue; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void hpsa_scan_complete(struct ctlr_info *h)
{
 unsigned long flags;

 spin_lock_irqsave(&h->scan_lock, flags);
 h->scan_finished = 1;
 wake_up(&h->scan_wait_queue);
 spin_unlock_irqrestore(&h->scan_lock, flags);
}
