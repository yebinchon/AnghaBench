
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {int lock; } ;
struct TYPE_4__ {int lock; } ;
struct iscsi_tiqn {int tiqn_index; int tiqn; int tiqn_list; int tiqn_state; TYPE_3__ logout_stats; TYPE_2__ login_stats; TYPE_1__ sess_err_stats; int tiqn_tpg_lock; int tiqn_state_lock; int tiqn_tpg_list; } ;


 int EINVAL ;
 int ENOMEM ;
 struct iscsi_tiqn* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ ISCSI_IQN_LEN ;
 int TIQN_STATE_ACTIVE ;
 int g_tiqn_list ;
 int idr_alloc (int *,int *,int ,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int kfree (struct iscsi_tiqn*) ;
 struct iscsi_tiqn* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,...) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int sprintf (int ,char*,unsigned char*) ;
 scalar_t__ strlen (unsigned char*) ;
 int tiqn_idr ;
 int tiqn_lock ;

struct iscsi_tiqn *iscsit_add_tiqn(unsigned char *buf)
{
 struct iscsi_tiqn *tiqn = ((void*)0);
 int ret;

 if (strlen(buf) >= ISCSI_IQN_LEN) {
  pr_err("Target IQN exceeds %d bytes\n",
    ISCSI_IQN_LEN);
  return ERR_PTR(-EINVAL);
 }

 tiqn = kzalloc(sizeof(*tiqn), GFP_KERNEL);
 if (!tiqn)
  return ERR_PTR(-ENOMEM);

 sprintf(tiqn->tiqn, "%s", buf);
 INIT_LIST_HEAD(&tiqn->tiqn_list);
 INIT_LIST_HEAD(&tiqn->tiqn_tpg_list);
 spin_lock_init(&tiqn->tiqn_state_lock);
 spin_lock_init(&tiqn->tiqn_tpg_lock);
 spin_lock_init(&tiqn->sess_err_stats.lock);
 spin_lock_init(&tiqn->login_stats.lock);
 spin_lock_init(&tiqn->logout_stats.lock);

 tiqn->tiqn_state = TIQN_STATE_ACTIVE;

 idr_preload(GFP_KERNEL);
 spin_lock(&tiqn_lock);

 ret = idr_alloc(&tiqn_idr, ((void*)0), 0, 0, GFP_NOWAIT);
 if (ret < 0) {
  pr_err("idr_alloc() failed for tiqn->tiqn_index\n");
  spin_unlock(&tiqn_lock);
  idr_preload_end();
  kfree(tiqn);
  return ERR_PTR(ret);
 }
 tiqn->tiqn_index = ret;
 list_add_tail(&tiqn->tiqn_list, &g_tiqn_list);

 spin_unlock(&tiqn_lock);
 idr_preload_end();

 pr_debug("CORE[0] - Added iSCSI Target IQN: %s\n", tiqn->tiqn);

 return tiqn;

}
