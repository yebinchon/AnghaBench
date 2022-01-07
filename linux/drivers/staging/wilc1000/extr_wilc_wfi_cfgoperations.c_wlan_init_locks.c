
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc {int txq_thread_started; int sync_event; int cfg_event; int txq_event; int txq_add_to_head_cs; int txq_spinlock; int vif_mutex; int cfg_cmd_lock; int rxq_cs; int hif_cs; } ;


 int init_completion (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void wlan_init_locks(struct wilc *wl)
{
 mutex_init(&wl->hif_cs);
 mutex_init(&wl->rxq_cs);
 mutex_init(&wl->cfg_cmd_lock);
 mutex_init(&wl->vif_mutex);

 spin_lock_init(&wl->txq_spinlock);
 mutex_init(&wl->txq_add_to_head_cs);

 init_completion(&wl->txq_event);
 init_completion(&wl->cfg_event);
 init_completion(&wl->sync_event);
 init_completion(&wl->txq_thread_started);
}
