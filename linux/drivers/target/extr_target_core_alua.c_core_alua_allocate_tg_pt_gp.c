
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t10_alua_tg_pt_gp {int tg_pt_gp_alua_access_type; int tg_pt_gp_alua_supported_states; int tg_pt_gp_valid_id; int tg_pt_gp_list; scalar_t__ tg_pt_gp_id; int tg_pt_gp_implicit_trans_secs; int tg_pt_gp_trans_delay_msecs; int tg_pt_gp_nonop_delay_msecs; int tg_pt_gp_alua_access_state; struct se_device* tg_pt_gp_dev; int tg_pt_gp_ref_cnt; int tg_pt_gp_lock; int tg_pt_gp_transition_mutex; int tg_pt_gp_lun_list; } ;
struct TYPE_2__ {int tg_pt_gps_lock; int tg_pt_gps_list; int alua_tg_pt_gps_count; int alua_tg_pt_gps_counter; } ;
struct se_device {TYPE_1__ t10_alua; } ;


 int ALUA_ACCESS_STATE_ACTIVE_OPTIMIZED ;
 int ALUA_AN_SUP ;
 int ALUA_AO_SUP ;
 int ALUA_DEFAULT_IMPLICIT_TRANS_SECS ;
 int ALUA_DEFAULT_NONOP_DELAY_MSECS ;
 int ALUA_DEFAULT_TRANS_DELAY_MSECS ;
 int ALUA_O_SUP ;
 int ALUA_S_SUP ;
 int ALUA_T_SUP ;
 int ALUA_U_SUP ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int TPGS_EXPLICIT_ALUA ;
 int TPGS_IMPLICIT_ALUA ;
 int atomic_set (int *,int ) ;
 struct t10_alua_tg_pt_gp* kmem_cache_zalloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int t10_alua_tg_pt_gp_cache ;

struct t10_alua_tg_pt_gp *core_alua_allocate_tg_pt_gp(struct se_device *dev,
  const char *name, int def_group)
{
 struct t10_alua_tg_pt_gp *tg_pt_gp;

 tg_pt_gp = kmem_cache_zalloc(t10_alua_tg_pt_gp_cache, GFP_KERNEL);
 if (!tg_pt_gp) {
  pr_err("Unable to allocate struct t10_alua_tg_pt_gp\n");
  return ((void*)0);
 }
 INIT_LIST_HEAD(&tg_pt_gp->tg_pt_gp_list);
 INIT_LIST_HEAD(&tg_pt_gp->tg_pt_gp_lun_list);
 mutex_init(&tg_pt_gp->tg_pt_gp_transition_mutex);
 spin_lock_init(&tg_pt_gp->tg_pt_gp_lock);
 atomic_set(&tg_pt_gp->tg_pt_gp_ref_cnt, 0);
 tg_pt_gp->tg_pt_gp_dev = dev;
 tg_pt_gp->tg_pt_gp_alua_access_state =
   ALUA_ACCESS_STATE_ACTIVE_OPTIMIZED;



 tg_pt_gp->tg_pt_gp_alua_access_type =
   TPGS_EXPLICIT_ALUA | TPGS_IMPLICIT_ALUA;



 tg_pt_gp->tg_pt_gp_nonop_delay_msecs = ALUA_DEFAULT_NONOP_DELAY_MSECS;
 tg_pt_gp->tg_pt_gp_trans_delay_msecs = ALUA_DEFAULT_TRANS_DELAY_MSECS;
 tg_pt_gp->tg_pt_gp_implicit_trans_secs = ALUA_DEFAULT_IMPLICIT_TRANS_SECS;




 tg_pt_gp->tg_pt_gp_alua_supported_states =
     ALUA_T_SUP | ALUA_O_SUP |
     ALUA_U_SUP | ALUA_S_SUP | ALUA_AN_SUP | ALUA_AO_SUP;

 if (def_group) {
  spin_lock(&dev->t10_alua.tg_pt_gps_lock);
  tg_pt_gp->tg_pt_gp_id =
    dev->t10_alua.alua_tg_pt_gps_counter++;
  tg_pt_gp->tg_pt_gp_valid_id = 1;
  dev->t10_alua.alua_tg_pt_gps_count++;
  list_add_tail(&tg_pt_gp->tg_pt_gp_list,
         &dev->t10_alua.tg_pt_gps_list);
  spin_unlock(&dev->t10_alua.tg_pt_gps_lock);
 }

 return tg_pt_gp;
}
