
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {unsigned long thread_allowed_mask; int wait_q; int mask_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void
lcs_set_allowed_threads(struct lcs_card *card, unsigned long threads)
{
 unsigned long flags;

 spin_lock_irqsave(&card->mask_lock, flags);
 card->thread_allowed_mask = threads;
 spin_unlock_irqrestore(&card->mask_lock, flags);
 wake_up(&card->wait_q);
}
