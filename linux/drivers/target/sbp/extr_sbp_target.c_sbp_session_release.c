
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp_session {scalar_t__ card; int se_sess; int maint_work; int lock; int login_list; } ;


 int cancel_delayed_work_sync (int *) ;
 int fw_card_put (scalar_t__) ;
 int kfree (struct sbp_session*) ;
 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int target_remove_session (int ) ;

__attribute__((used)) static void sbp_session_release(struct sbp_session *sess, bool cancel_work)
{
 spin_lock_bh(&sess->lock);
 if (!list_empty(&sess->login_list)) {
  spin_unlock_bh(&sess->lock);
  return;
 }
 spin_unlock_bh(&sess->lock);

 if (cancel_work)
  cancel_delayed_work_sync(&sess->maint_work);

 target_remove_session(sess->se_sess);

 if (sess->card)
  fw_card_put(sess->card);

 kfree(sess);
}
