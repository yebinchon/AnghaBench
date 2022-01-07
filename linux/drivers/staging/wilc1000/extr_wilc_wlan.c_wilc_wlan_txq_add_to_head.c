
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wilc_vif {struct wilc* wilc; } ;
struct TYPE_2__ {int list; } ;
struct wilc {int txq_entries; int txq_event; int txq_add_to_head_cs; int txq_spinlock; TYPE_1__ txq_head; } ;
struct txq_entry_t {int list; } ;


 int complete (int *) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void wilc_wlan_txq_add_to_head(struct wilc_vif *vif,
          struct txq_entry_t *tqe)
{
 unsigned long flags;
 struct wilc *wilc = vif->wilc;

 mutex_lock(&wilc->txq_add_to_head_cs);

 spin_lock_irqsave(&wilc->txq_spinlock, flags);

 list_add(&tqe->list, &wilc->txq_head.list);
 wilc->txq_entries += 1;

 spin_unlock_irqrestore(&wilc->txq_spinlock, flags);
 mutex_unlock(&wilc->txq_add_to_head_cs);
 complete(&wilc->txq_event);
}
