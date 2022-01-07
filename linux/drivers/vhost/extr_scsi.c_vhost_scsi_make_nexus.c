
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_scsi_tpg {int tv_tpg_mutex; struct vhost_scsi_nexus* tpg_nexus; int se_tpg; } ;
struct vhost_scsi_nexus {int tvn_se_sess; } ;
struct vhost_scsi_cmd {int dummy; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int TARGET_PROT_DIN_PASS ;
 int TARGET_PROT_DOUT_PASS ;
 int VHOST_SCSI_DEFAULT_TAGS ;
 int kfree (struct vhost_scsi_nexus*) ;
 struct vhost_scsi_nexus* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 int target_setup_session (int *,int ,int,int,unsigned char*,struct vhost_scsi_nexus*,int ) ;
 int vhost_scsi_nexus_cb ;

__attribute__((used)) static int vhost_scsi_make_nexus(struct vhost_scsi_tpg *tpg,
    const char *name)
{
 struct vhost_scsi_nexus *tv_nexus;

 mutex_lock(&tpg->tv_tpg_mutex);
 if (tpg->tpg_nexus) {
  mutex_unlock(&tpg->tv_tpg_mutex);
  pr_debug("tpg->tpg_nexus already exists\n");
  return -EEXIST;
 }

 tv_nexus = kzalloc(sizeof(*tv_nexus), GFP_KERNEL);
 if (!tv_nexus) {
  mutex_unlock(&tpg->tv_tpg_mutex);
  pr_err("Unable to allocate struct vhost_scsi_nexus\n");
  return -ENOMEM;
 }





 tv_nexus->tvn_se_sess = target_setup_session(&tpg->se_tpg,
     VHOST_SCSI_DEFAULT_TAGS,
     sizeof(struct vhost_scsi_cmd),
     TARGET_PROT_DIN_PASS | TARGET_PROT_DOUT_PASS,
     (unsigned char *)name, tv_nexus,
     vhost_scsi_nexus_cb);
 if (IS_ERR(tv_nexus->tvn_se_sess)) {
  mutex_unlock(&tpg->tv_tpg_mutex);
  kfree(tv_nexus);
  return -ENOMEM;
 }
 tpg->tpg_nexus = tv_nexus;

 mutex_unlock(&tpg->tv_tpg_mutex);
 return 0;
}
