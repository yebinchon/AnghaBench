
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct wilc {int txq_spinlock; TYPE_1__ txq_head; } ;
struct txq_entry_t {int list; } ;


 int list ;
 int list_is_last (int *,int *) ;
 struct txq_entry_t* list_next_entry (struct txq_entry_t*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct txq_entry_t *wilc_wlan_txq_get_next(struct wilc *wilc,
        struct txq_entry_t *tqe)
{
 unsigned long flags;

 spin_lock_irqsave(&wilc->txq_spinlock, flags);

 if (!list_is_last(&tqe->list, &wilc->txq_head.list))
  tqe = list_next_entry(tqe, list);
 else
  tqe = ((void*)0);
 spin_unlock_irqrestore(&wilc->txq_spinlock, flags);

 return tqe;
}
