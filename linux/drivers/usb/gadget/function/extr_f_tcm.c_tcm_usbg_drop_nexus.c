
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbg_tpg {int tpg_mutex; struct tcm_usbg_nexus* tpg_nexus; int tpg_port_count; } ;
struct tcm_usbg_nexus {struct se_session* tvn_se_sess; } ;
struct se_session {TYPE_1__* se_node_acl; } ;
struct TYPE_2__ {int initiatorname; } ;


 int ENODEV ;
 int EPERM ;
 int MSG ;
 scalar_t__ atomic_read (int *) ;
 int kfree (struct tcm_usbg_nexus*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ) ;
 int pr_err (int ,scalar_t__) ;
 int target_remove_session (struct se_session*) ;

__attribute__((used)) static int tcm_usbg_drop_nexus(struct usbg_tpg *tpg)
{
 struct se_session *se_sess;
 struct tcm_usbg_nexus *tv_nexus;
 int ret = -ENODEV;

 mutex_lock(&tpg->tpg_mutex);
 tv_nexus = tpg->tpg_nexus;
 if (!tv_nexus)
  goto out;

 se_sess = tv_nexus->tvn_se_sess;
 if (!se_sess)
  goto out;

 if (atomic_read(&tpg->tpg_port_count)) {
  ret = -EPERM;

  pr_err("Unable to remove Host I_T Nexus with active TPG port count: %d\n", atomic_read(&tpg->tpg_port_count));

  goto out;
 }

 pr_debug("Removing I_T Nexus to Initiator Port: %s\n",
   tv_nexus->tvn_se_sess->se_node_acl->initiatorname);



 target_remove_session(se_sess);
 tpg->tpg_nexus = ((void*)0);

 kfree(tv_nexus);
 ret = 0;
out:
 mutex_unlock(&tpg->tpg_mutex);
 return ret;
}
