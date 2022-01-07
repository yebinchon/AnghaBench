
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wilc_vif {struct wilc* wilc; } ;
struct TYPE_2__ {int list; } ;
struct wilc {int txq_entries; int txq_event; int txq_spinlock; TYPE_1__ txq_head; } ;
struct txq_entry_t {int list; } ;
struct net_device {int dummy; } ;


 int complete (int *) ;
 int list_add_tail (int *,int *) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void wilc_wlan_txq_add_to_tail(struct net_device *dev,
          struct txq_entry_t *tqe)
{
 unsigned long flags;
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc *wilc = vif->wilc;

 spin_lock_irqsave(&wilc->txq_spinlock, flags);

 list_add_tail(&tqe->list, &wilc->txq_head.list);
 wilc->txq_entries += 1;

 spin_unlock_irqrestore(&wilc->txq_spinlock, flags);

 complete(&wilc->txq_event);
}
