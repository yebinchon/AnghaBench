
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct vhost_virtqueue {int acked_features; int mutex; } ;
struct TYPE_4__ {int mutex; } ;
struct vhost_scsi {TYPE_2__ dev; TYPE_1__* vqs; } ;
struct TYPE_3__ {struct vhost_virtqueue vq; } ;


 int EFAULT ;
 int EOPNOTSUPP ;
 int VHOST_F_LOG_ALL ;
 int VHOST_SCSI_FEATURES ;
 int VHOST_SCSI_MAX_VQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vhost_log_access_ok (TYPE_2__*) ;

__attribute__((used)) static int vhost_scsi_set_features(struct vhost_scsi *vs, u64 features)
{
 struct vhost_virtqueue *vq;
 int i;

 if (features & ~VHOST_SCSI_FEATURES)
  return -EOPNOTSUPP;

 mutex_lock(&vs->dev.mutex);
 if ((features & (1 << VHOST_F_LOG_ALL)) &&
     !vhost_log_access_ok(&vs->dev)) {
  mutex_unlock(&vs->dev.mutex);
  return -EFAULT;
 }

 for (i = 0; i < VHOST_SCSI_MAX_VQ; i++) {
  vq = &vs->vqs[i].vq;
  mutex_lock(&vq->mutex);
  vq->acked_features = features;
  mutex_unlock(&vq->mutex);
 }
 mutex_unlock(&vs->dev.mutex);
 return 0;
}
