
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct wilc_vif {scalar_t__ ndev; scalar_t__ mac_opened; } ;
struct wilc {int vif_num; int vif_mutex; struct wilc_vif** vif; scalar_t__ close; int txq_thread_started; int txq_event; } ;


 int ENOBUFS ;
 scalar_t__ FLOW_CONTROL_LOWER_THRESHOLD ;
 int complete (int *) ;
 int kthread_should_stop () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_wake_queue (scalar_t__) ;
 int schedule () ;
 int wait_for_completion (int *) ;
 int wilc_wlan_handle_txq (struct wilc*,scalar_t__*) ;

__attribute__((used)) static int wilc_txq_task(void *vp)
{
 int ret;
 u32 txq_count;
 struct wilc *wl = vp;

 complete(&wl->txq_thread_started);
 while (1) {
  wait_for_completion(&wl->txq_event);

  if (wl->close) {
   complete(&wl->txq_thread_started);

   while (!kthread_should_stop())
    schedule();
   break;
  }
  do {
   ret = wilc_wlan_handle_txq(wl, &txq_count);
   if (txq_count < FLOW_CONTROL_LOWER_THRESHOLD) {
    int i;
    struct wilc_vif *ifc;

    mutex_lock(&wl->vif_mutex);
    for (i = 0; i < wl->vif_num; i++) {
     ifc = wl->vif[i];
     if (ifc->mac_opened && ifc->ndev)
      netif_wake_queue(ifc->ndev);
    }
    mutex_unlock(&wl->vif_mutex);
   }
  } while (ret == -ENOBUFS && !wl->close);
 }
 return 0;
}
