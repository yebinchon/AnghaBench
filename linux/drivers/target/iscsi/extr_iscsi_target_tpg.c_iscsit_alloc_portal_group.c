
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iscsi_tiqn {int dummy; } ;
struct iscsi_portal_group {int tpg_np_lock; int tpg_state_lock; int np_login_sem; int tpg_access_lock; int tpg_list; int tpg_gnp_list; struct iscsi_tiqn* tpg_tiqn; int tpg_state; int tpgt; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int TPG_STATE_FREE ;
 struct iscsi_portal_group* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pr_err (char*) ;
 int sema_init (int *,int) ;
 int spin_lock_init (int *) ;

struct iscsi_portal_group *iscsit_alloc_portal_group(struct iscsi_tiqn *tiqn, u16 tpgt)
{
 struct iscsi_portal_group *tpg;

 tpg = kzalloc(sizeof(struct iscsi_portal_group), GFP_KERNEL);
 if (!tpg) {
  pr_err("Unable to allocate struct iscsi_portal_group\n");
  return ((void*)0);
 }

 tpg->tpgt = tpgt;
 tpg->tpg_state = TPG_STATE_FREE;
 tpg->tpg_tiqn = tiqn;
 INIT_LIST_HEAD(&tpg->tpg_gnp_list);
 INIT_LIST_HEAD(&tpg->tpg_list);
 mutex_init(&tpg->tpg_access_lock);
 sema_init(&tpg->np_login_sem, 1);
 spin_lock_init(&tpg->tpg_state_lock);
 spin_lock_init(&tpg->tpg_np_lock);

 return tpg;
}
