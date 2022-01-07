
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp_session {int lock; } ;
struct sbp_login_descriptor {int link; int tgt_agt; struct sbp_session* sess; } ;


 int kfree (struct sbp_login_descriptor*) ;
 int list_del (int *) ;
 int sbp_session_release (struct sbp_session*,int) ;
 int sbp_target_agent_unregister (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void sbp_login_release(struct sbp_login_descriptor *login,
 bool cancel_work)
{
 struct sbp_session *sess = login->sess;



 sbp_target_agent_unregister(login->tgt_agt);

 if (sess) {
  spin_lock_bh(&sess->lock);
  list_del(&login->link);
  spin_unlock_bh(&sess->lock);

  sbp_session_release(sess, cancel_work);
 }

 kfree(login);
}
