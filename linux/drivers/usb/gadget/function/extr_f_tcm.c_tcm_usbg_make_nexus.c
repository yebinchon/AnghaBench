
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbg_tpg {int tpg_mutex; int se_tpg; scalar_t__ tpg_nexus; } ;
struct usbg_cmd {int dummy; } ;
struct tcm_usbg_nexus {int tvn_se_sess; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAKE_NEXUS_MSG ;
 int PTR_ERR (int ) ;
 int TARGET_PROT_NORMAL ;
 int USB_G_DEFAULT_SESSION_TAGS ;
 int kfree (struct tcm_usbg_nexus*) ;
 struct tcm_usbg_nexus* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,...) ;
 int target_setup_session (int *,int ,int,int ,char*,struct tcm_usbg_nexus*,int ) ;
 int usbg_alloc_sess_cb ;

__attribute__((used)) static int tcm_usbg_make_nexus(struct usbg_tpg *tpg, char *name)
{
 struct tcm_usbg_nexus *tv_nexus;
 int ret = 0;

 mutex_lock(&tpg->tpg_mutex);
 if (tpg->tpg_nexus) {
  ret = -EEXIST;
  pr_debug("tpg->tpg_nexus already exists\n");
  goto out_unlock;
 }

 tv_nexus = kzalloc(sizeof(*tv_nexus), GFP_KERNEL);
 if (!tv_nexus) {
  ret = -ENOMEM;
  goto out_unlock;
 }

 tv_nexus->tvn_se_sess = target_setup_session(&tpg->se_tpg,
           USB_G_DEFAULT_SESSION_TAGS,
           sizeof(struct usbg_cmd),
           TARGET_PROT_NORMAL, name,
           tv_nexus, usbg_alloc_sess_cb);
 if (IS_ERR(tv_nexus->tvn_se_sess)) {

  pr_debug("core_tpg_check_initiator_node_acl() failed for %s\n", name);

  ret = PTR_ERR(tv_nexus->tvn_se_sess);
  kfree(tv_nexus);
 }

out_unlock:
 mutex_unlock(&tpg->tpg_mutex);
 return ret;
}
