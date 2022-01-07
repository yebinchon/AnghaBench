
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_virtqueue {int mutex; } ;
struct vhost_scsi_inflight {int comp; int kref; } ;
struct vhost_scsi {TYPE_1__* vqs; } ;
struct TYPE_2__ {int inflight_idx; struct vhost_scsi_inflight* inflights; struct vhost_virtqueue vq; } ;


 int VHOST_SCSI_MAX_VQ ;
 int init_completion (int *) ;
 int kref_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void vhost_scsi_init_inflight(struct vhost_scsi *vs,
        struct vhost_scsi_inflight *old_inflight[])
{
 struct vhost_scsi_inflight *new_inflight;
 struct vhost_virtqueue *vq;
 int idx, i;

 for (i = 0; i < VHOST_SCSI_MAX_VQ; i++) {
  vq = &vs->vqs[i].vq;

  mutex_lock(&vq->mutex);


  idx = vs->vqs[i].inflight_idx;
  if (old_inflight)
   old_inflight[i] = &vs->vqs[i].inflights[idx];


  vs->vqs[i].inflight_idx = idx ^ 1;
  new_inflight = &vs->vqs[i].inflights[idx ^ 1];
  kref_init(&new_inflight->kref);
  init_completion(&new_inflight->comp);

  mutex_unlock(&vq->mutex);
 }
}
