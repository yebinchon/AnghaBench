
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct se_portal_group {int dummy; } ;
struct se_lun {struct se_portal_group* lun_tpg; int lun_tg_pt_gp_lock; int lun_tg_pt_gp_link; int lun_tg_pt_md_mutex; int lun_deve_lock; int lun_tg_pt_secondary_offline; int lun_dev_link; int lun_deve_list; int lun_shutdown_comp; int lun_acl_count; int unpacked_lun; } ;


 int ENOMEM ;
 struct se_lun* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int init_completion (int *) ;
 struct se_lun* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pr_err (char*) ;
 int spin_lock_init (int *) ;

struct se_lun *core_tpg_alloc_lun(
 struct se_portal_group *tpg,
 u64 unpacked_lun)
{
 struct se_lun *lun;

 lun = kzalloc(sizeof(*lun), GFP_KERNEL);
 if (!lun) {
  pr_err("Unable to allocate se_lun memory\n");
  return ERR_PTR(-ENOMEM);
 }
 lun->unpacked_lun = unpacked_lun;
 atomic_set(&lun->lun_acl_count, 0);
 init_completion(&lun->lun_shutdown_comp);
 INIT_LIST_HEAD(&lun->lun_deve_list);
 INIT_LIST_HEAD(&lun->lun_dev_link);
 atomic_set(&lun->lun_tg_pt_secondary_offline, 0);
 spin_lock_init(&lun->lun_deve_lock);
 mutex_init(&lun->lun_tg_pt_md_mutex);
 INIT_LIST_HEAD(&lun->lun_tg_pt_gp_link);
 spin_lock_init(&lun->lun_tg_pt_gp_lock);
 lun->lun_tpg = tpg;

 return lun;
}
