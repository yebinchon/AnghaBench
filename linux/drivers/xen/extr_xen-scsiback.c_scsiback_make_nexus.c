
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsibk_pend {int dummy; } ;
struct scsiback_tpg {int tv_tpg_mutex; int se_tpg; scalar_t__ tpg_nexus; } ;
struct scsiback_nexus {int tvn_se_sess; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int TARGET_PROT_NORMAL ;
 int VSCSI_DEFAULT_SESSION_TAGS ;
 int kfree (struct scsiback_nexus*) ;
 struct scsiback_nexus* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 int scsiback_alloc_sess_cb ;
 int target_setup_session (int *,int ,int,int ,char const*,struct scsiback_nexus*,int ) ;

__attribute__((used)) static int scsiback_make_nexus(struct scsiback_tpg *tpg,
    const char *name)
{
 struct scsiback_nexus *tv_nexus;
 int ret = 0;

 mutex_lock(&tpg->tv_tpg_mutex);
 if (tpg->tpg_nexus) {
  pr_debug("tpg->tpg_nexus already exists\n");
  ret = -EEXIST;
  goto out_unlock;
 }

 tv_nexus = kzalloc(sizeof(struct scsiback_nexus), GFP_KERNEL);
 if (!tv_nexus) {
  ret = -ENOMEM;
  goto out_unlock;
 }

 tv_nexus->tvn_se_sess = target_setup_session(&tpg->se_tpg,
           VSCSI_DEFAULT_SESSION_TAGS,
           sizeof(struct vscsibk_pend),
           TARGET_PROT_NORMAL, name,
           tv_nexus, scsiback_alloc_sess_cb);
 if (IS_ERR(tv_nexus->tvn_se_sess)) {
  kfree(tv_nexus);
  ret = -ENOMEM;
  goto out_unlock;
 }

out_unlock:
 mutex_unlock(&tpg->tv_tpg_mutex);
 return ret;
}
