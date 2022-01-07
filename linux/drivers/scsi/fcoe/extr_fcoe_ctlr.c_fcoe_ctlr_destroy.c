
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_ctlr {int timer_work; int timer; int ctlr_mutex; int fip_recv_list; int recv_work; } ;


 int FIP_ST_DISABLED ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int fcoe_ctlr_reset_fcfs (struct fcoe_ctlr*) ;
 int fcoe_ctlr_set_state (struct fcoe_ctlr*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skb_queue_purge (int *) ;

void fcoe_ctlr_destroy(struct fcoe_ctlr *fip)
{
 cancel_work_sync(&fip->recv_work);
 skb_queue_purge(&fip->fip_recv_list);

 mutex_lock(&fip->ctlr_mutex);
 fcoe_ctlr_set_state(fip, FIP_ST_DISABLED);
 fcoe_ctlr_reset_fcfs(fip);
 mutex_unlock(&fip->ctlr_mutex);
 del_timer_sync(&fip->timer);
 cancel_work_sync(&fip->timer_work);
}
