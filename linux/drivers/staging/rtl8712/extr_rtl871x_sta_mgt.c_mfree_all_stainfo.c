
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {struct list_head* next; } ;
struct TYPE_2__ {struct list_head queue; } ;
struct sta_priv {int sta_hash_lock; TYPE_1__ free_sta_queue; } ;


 int end_of_queue_search (struct list_head*,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mfree_all_stainfo(struct sta_priv *pstapriv)
{
 unsigned long irqL;
 struct list_head *plist, *phead;

 spin_lock_irqsave(&pstapriv->sta_hash_lock, irqL);
 phead = &pstapriv->free_sta_queue.queue;
 plist = phead->next;
 while (!end_of_queue_search(phead, plist))
  plist = plist->next;

 spin_unlock_irqrestore(&pstapriv->sta_hash_lock, irqL);
}
