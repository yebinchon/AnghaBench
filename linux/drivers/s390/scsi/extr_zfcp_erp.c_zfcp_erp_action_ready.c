
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {struct zfcp_adapter* adapter; int list; } ;
struct zfcp_adapter {int erp_ready_wq; int erp_ready_head; } ;


 int list_move (int *,int *) ;
 int wake_up (int *) ;
 int zfcp_dbf_rec_run (char*,struct zfcp_erp_action*) ;

__attribute__((used)) static void zfcp_erp_action_ready(struct zfcp_erp_action *act)
{
 struct zfcp_adapter *adapter = act->adapter;

 list_move(&act->list, &act->adapter->erp_ready_head);
 zfcp_dbf_rec_run("erardy1", act);
 wake_up(&adapter->erp_ready_wq);
 zfcp_dbf_rec_run("erardy2", act);
}
