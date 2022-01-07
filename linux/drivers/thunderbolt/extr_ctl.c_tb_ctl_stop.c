
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_ctl {int running; int request_queue; int tx; int rx; int request_queue_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tb_ctl_WARN (struct tb_ctl*,char*) ;
 int tb_ctl_dbg (struct tb_ctl*,char*) ;
 int tb_ring_stop (int ) ;

void tb_ctl_stop(struct tb_ctl *ctl)
{
 mutex_lock(&ctl->request_queue_lock);
 ctl->running = 0;
 mutex_unlock(&ctl->request_queue_lock);

 tb_ring_stop(ctl->rx);
 tb_ring_stop(ctl->tx);

 if (!list_empty(&ctl->request_queue))
  tb_ctl_WARN(ctl, "dangling request in request_queue\n");
 INIT_LIST_HEAD(&ctl->request_queue);
 tb_ctl_dbg(ctl, "control channel stopped\n");
}
