
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int lport_list; } ;


 int FC_LPORT_EV_DEL ;
 int blocking_notifier_call_chain (int *,int ,struct fc_lport*) ;
 int fc_lport_notifier_head ;
 int fc_prov_mutex ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void fc_fc4_del_lport(struct fc_lport *lport)
{
 mutex_lock(&fc_prov_mutex);
 list_del(&lport->lport_list);
 blocking_notifier_call_chain(&fc_lport_notifier_head,
         FC_LPORT_EV_DEL, lport);
 mutex_unlock(&fc_prov_mutex);
}
