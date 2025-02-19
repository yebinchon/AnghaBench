
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_virtqueue {int handle_kick; } ;
struct vhost_scsi {int vs_events_missed; int dev; TYPE_1__* vqs; scalar_t__ vs_events_nr; int vs_event_work; int vs_completion_work; } ;
struct inode {int dummy; } ;
struct file {struct vhost_scsi* private_data; } ;
struct TYPE_2__ {struct vhost_virtqueue vq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int UIO_MAXIOV ;
 int VHOST_SCSI_MAX_VQ ;
 size_t VHOST_SCSI_VQ_CTL ;
 size_t VHOST_SCSI_VQ_EVT ;
 int VHOST_SCSI_VQ_IO ;
 int VHOST_SCSI_WEIGHT ;
 int __GFP_NOWARN ;
 int __GFP_RETRY_MAYFAIL ;
 struct vhost_virtqueue** kmalloc_array (int,int,int) ;
 int kvfree (struct vhost_scsi*) ;
 struct vhost_scsi* kzalloc (int,int) ;
 int vhost_dev_init (int *,struct vhost_virtqueue**,int,int ,int ,int ) ;
 int vhost_scsi_complete_cmd_work ;
 int vhost_scsi_ctl_handle_kick ;
 int vhost_scsi_evt_handle_kick ;
 int vhost_scsi_evt_work ;
 int vhost_scsi_handle_kick ;
 int vhost_scsi_init_inflight (struct vhost_scsi*,int *) ;
 int vhost_work_init (int *,int ) ;
 struct vhost_scsi* vzalloc (int) ;

__attribute__((used)) static int vhost_scsi_open(struct inode *inode, struct file *f)
{
 struct vhost_scsi *vs;
 struct vhost_virtqueue **vqs;
 int r = -ENOMEM, i;

 vs = kzalloc(sizeof(*vs), GFP_KERNEL | __GFP_NOWARN | __GFP_RETRY_MAYFAIL);
 if (!vs) {
  vs = vzalloc(sizeof(*vs));
  if (!vs)
   goto err_vs;
 }

 vqs = kmalloc_array(VHOST_SCSI_MAX_VQ, sizeof(*vqs), GFP_KERNEL);
 if (!vqs)
  goto err_vqs;

 vhost_work_init(&vs->vs_completion_work, vhost_scsi_complete_cmd_work);
 vhost_work_init(&vs->vs_event_work, vhost_scsi_evt_work);

 vs->vs_events_nr = 0;
 vs->vs_events_missed = 0;

 vqs[VHOST_SCSI_VQ_CTL] = &vs->vqs[VHOST_SCSI_VQ_CTL].vq;
 vqs[VHOST_SCSI_VQ_EVT] = &vs->vqs[VHOST_SCSI_VQ_EVT].vq;
 vs->vqs[VHOST_SCSI_VQ_CTL].vq.handle_kick = vhost_scsi_ctl_handle_kick;
 vs->vqs[VHOST_SCSI_VQ_EVT].vq.handle_kick = vhost_scsi_evt_handle_kick;
 for (i = VHOST_SCSI_VQ_IO; i < VHOST_SCSI_MAX_VQ; i++) {
  vqs[i] = &vs->vqs[i].vq;
  vs->vqs[i].vq.handle_kick = vhost_scsi_handle_kick;
 }
 vhost_dev_init(&vs->dev, vqs, VHOST_SCSI_MAX_VQ, UIO_MAXIOV,
         VHOST_SCSI_WEIGHT, 0);

 vhost_scsi_init_inflight(vs, ((void*)0));

 f->private_data = vs;
 return 0;

err_vqs:
 kvfree(vs);
err_vs:
 return r;
}
