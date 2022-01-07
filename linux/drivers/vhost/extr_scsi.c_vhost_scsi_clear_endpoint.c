
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct vhost_virtqueue {int mutex; int * private_data; } ;
struct vhost_scsi_tport {int tport_name; } ;
struct TYPE_4__ {int cg_item; } ;
struct se_portal_group {TYPE_1__ tpg_group; } ;
struct vhost_scsi_tpg {int tv_tpg_mutex; struct se_portal_group se_tpg; int * vhost_scsi; int tv_tpg_vhost_count; int tport_tpgt; struct vhost_scsi_tport* tport; } ;
struct vhost_scsi_target {int vhost_tpgt; int vhost_wwpn; } ;
struct TYPE_6__ {int nvqs; int mutex; } ;
struct vhost_scsi {TYPE_3__ dev; int vs_events_nr; struct vhost_scsi_tpg** vs_tpg; TYPE_2__* vqs; } ;
struct TYPE_5__ {struct vhost_virtqueue vq; } ;


 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int VHOST_SCSI_MAX_TARGET ;
 int VHOST_SCSI_MAX_VQ ;
 int WARN_ON (int ) ;
 int kfree (struct vhost_scsi_tpg**) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,int ,int ,int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int target_undepend_item (int *) ;
 int vhost_scsi_flush (struct vhost_scsi*) ;
 int vhost_scsi_mutex ;
 int vhost_vq_access_ok (struct vhost_virtqueue*) ;

__attribute__((used)) static int
vhost_scsi_clear_endpoint(struct vhost_scsi *vs,
     struct vhost_scsi_target *t)
{
 struct se_portal_group *se_tpg;
 struct vhost_scsi_tport *tv_tport;
 struct vhost_scsi_tpg *tpg;
 struct vhost_virtqueue *vq;
 bool match = 0;
 int index, ret, i;
 u8 target;

 mutex_lock(&vhost_scsi_mutex);
 mutex_lock(&vs->dev.mutex);

 for (index = 0; index < vs->dev.nvqs; ++index) {
  if (!vhost_vq_access_ok(&vs->vqs[index].vq)) {
   ret = -EFAULT;
   goto err_dev;
  }
 }

 if (!vs->vs_tpg) {
  ret = 0;
  goto err_dev;
 }

 for (i = 0; i < VHOST_SCSI_MAX_TARGET; i++) {
  target = i;
  tpg = vs->vs_tpg[target];
  if (!tpg)
   continue;

  mutex_lock(&tpg->tv_tpg_mutex);
  tv_tport = tpg->tport;
  if (!tv_tport) {
   ret = -ENODEV;
   goto err_tpg;
  }

  if (strcmp(tv_tport->tport_name, t->vhost_wwpn)) {
   pr_warn("tv_tport->tport_name: %s, tpg->tport_tpgt: %hu"
    " does not match t->vhost_wwpn: %s, t->vhost_tpgt: %hu\n",
    tv_tport->tport_name, tpg->tport_tpgt,
    t->vhost_wwpn, t->vhost_tpgt);
   ret = -EINVAL;
   goto err_tpg;
  }
  tpg->tv_tpg_vhost_count--;
  tpg->vhost_scsi = ((void*)0);
  vs->vs_tpg[target] = ((void*)0);
  match = 1;
  mutex_unlock(&tpg->tv_tpg_mutex);




  se_tpg = &tpg->se_tpg;
  target_undepend_item(&se_tpg->tpg_group.cg_item);
 }
 if (match) {
  for (i = 0; i < VHOST_SCSI_MAX_VQ; i++) {
   vq = &vs->vqs[i].vq;
   mutex_lock(&vq->mutex);
   vq->private_data = ((void*)0);
   mutex_unlock(&vq->mutex);
  }
 }




 vhost_scsi_flush(vs);
 kfree(vs->vs_tpg);
 vs->vs_tpg = ((void*)0);
 WARN_ON(vs->vs_events_nr);
 mutex_unlock(&vs->dev.mutex);
 mutex_unlock(&vhost_scsi_mutex);
 return 0;

err_tpg:
 mutex_unlock(&tpg->tv_tpg_mutex);
err_dev:
 mutex_unlock(&vs->dev.mutex);
 mutex_unlock(&vhost_scsi_mutex);
 return ret;
}
