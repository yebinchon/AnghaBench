
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int dummy; } ;
struct se_portal_group {int session_lock; } ;
struct se_node_acl {int dummy; } ;


 int __transport_register_session (struct se_portal_group*,struct se_node_acl*,struct se_session*,void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void transport_register_session(
 struct se_portal_group *se_tpg,
 struct se_node_acl *se_nacl,
 struct se_session *se_sess,
 void *fabric_sess_ptr)
{
 unsigned long flags;

 spin_lock_irqsave(&se_tpg->session_lock, flags);
 __transport_register_session(se_tpg, se_nacl, se_sess, fabric_sess_ptr);
 spin_unlock_irqrestore(&se_tpg->session_lock, flags);
}
