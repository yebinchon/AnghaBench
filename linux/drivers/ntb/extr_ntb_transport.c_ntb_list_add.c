
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
typedef int spinlock_t ;


 int list_add_tail (struct list_head*,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ntb_list_add(spinlock_t *lock, struct list_head *entry,
    struct list_head *list)
{
 unsigned long flags;

 spin_lock_irqsave(lock, flags);
 list_add_tail(entry, list);
 spin_unlock_irqrestore(lock, flags);
}
