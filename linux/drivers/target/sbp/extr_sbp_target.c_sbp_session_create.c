
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sbp_tpg {int se_tpg; } ;
struct sbp_target_request {int dummy; } ;
struct sbp_session {int se_sess; int guid; int maint_work; int login_list; int lock; } ;
typedef int guid_str ;


 int ENOMEM ;
 struct sbp_session* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int TARGET_PROT_NORMAL ;
 int kfree (struct sbp_session*) ;
 struct sbp_session* kmalloc (int,int ) ;
 int pr_err (char*) ;
 int session_maintenance_work ;
 int snprintf (char*,int,char*,int ) ;
 int spin_lock_init (int *) ;
 int target_setup_session (int *,int,int,int ,char*,struct sbp_session*,int *) ;

__attribute__((used)) static struct sbp_session *sbp_session_create(
  struct sbp_tpg *tpg,
  u64 guid)
{
 struct sbp_session *sess;
 int ret;
 char guid_str[17];

 snprintf(guid_str, sizeof(guid_str), "%016llx", guid);

 sess = kmalloc(sizeof(*sess), GFP_KERNEL);
 if (!sess)
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&sess->lock);
 INIT_LIST_HEAD(&sess->login_list);
 INIT_DELAYED_WORK(&sess->maint_work, session_maintenance_work);
 sess->guid = guid;

 sess->se_sess = target_setup_session(&tpg->se_tpg, 128,
          sizeof(struct sbp_target_request),
          TARGET_PROT_NORMAL, guid_str,
          sess, ((void*)0));
 if (IS_ERR(sess->se_sess)) {
  pr_err("failed to init se_session\n");
  ret = PTR_ERR(sess->se_sess);
  kfree(sess);
  return ERR_PTR(ret);
 }

 return sess;
}
