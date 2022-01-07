
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_vif {struct wilc* wilc; } ;
struct wilc {int txq_thread_started; int txq_thread; scalar_t__ close; } ;
struct net_device {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int kthread_run (int ,void*,char*) ;
 int netdev_err (struct net_device*,char*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int wait_for_completion (int *) ;
 int wilc_txq_task ;

__attribute__((used)) static int wlan_initialize_threads(struct net_device *dev)
{
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc *wilc = vif->wilc;

 wilc->txq_thread = kthread_run(wilc_txq_task, (void *)wilc,
           "K_TXQ_TASK");
 if (IS_ERR(wilc->txq_thread)) {
  netdev_err(dev, "couldn't create TXQ thread\n");
  wilc->close = 0;
  return PTR_ERR(wilc->txq_thread);
 }
 wait_for_completion(&wilc->txq_thread_started);

 return 0;
}
