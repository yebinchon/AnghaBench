
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_session {int * fabric_sess_ptr; struct se_portal_group* se_tpg; int sess_list; } ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; int session_lock; } ;
struct TYPE_2__ {int fabric_name; } ;


 int list_del (int *) ;
 int pr_debug (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int transport_free_session (struct se_session*) ;

void transport_deregister_session(struct se_session *se_sess)
{
 struct se_portal_group *se_tpg = se_sess->se_tpg;
 unsigned long flags;

 if (!se_tpg) {
  transport_free_session(se_sess);
  return;
 }

 spin_lock_irqsave(&se_tpg->session_lock, flags);
 list_del(&se_sess->sess_list);
 se_sess->se_tpg = ((void*)0);
 se_sess->fabric_sess_ptr = ((void*)0);
 spin_unlock_irqrestore(&se_tpg->session_lock, flags);

 pr_debug("TARGET_CORE[%s]: Deregistered fabric_sess\n",
  se_tpg->se_tpg_tfo->fabric_name);
 transport_free_session(se_sess);
}
