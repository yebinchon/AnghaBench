
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_scsi_inflight {int comp; int kref; } ;
struct vhost_scsi {int vs_event_work; int dev; int vs_completion_work; } ;


 int VHOST_SCSI_MAX_VQ ;
 int kref_put (int *,int ) ;
 int vhost_scsi_done_inflight ;
 int vhost_scsi_flush_vq (struct vhost_scsi*,int) ;
 int vhost_scsi_init_inflight (struct vhost_scsi*,struct vhost_scsi_inflight**) ;
 int vhost_work_flush (int *,int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void vhost_scsi_flush(struct vhost_scsi *vs)
{
 struct vhost_scsi_inflight *old_inflight[VHOST_SCSI_MAX_VQ];
 int i;


 vhost_scsi_init_inflight(vs, old_inflight);






 for (i = 0; i < VHOST_SCSI_MAX_VQ; i++)
  kref_put(&old_inflight[i]->kref, vhost_scsi_done_inflight);


 for (i = 0; i < VHOST_SCSI_MAX_VQ; i++)
  vhost_scsi_flush_vq(vs, i);
 vhost_work_flush(&vs->dev, &vs->vs_completion_work);
 vhost_work_flush(&vs->dev, &vs->vs_event_work);


 for (i = 0; i < VHOST_SCSI_MAX_VQ; i++)
  wait_for_completion(&old_inflight[i]->comp);
}
