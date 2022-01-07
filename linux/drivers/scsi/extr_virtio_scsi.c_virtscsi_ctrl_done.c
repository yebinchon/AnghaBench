
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int vdev; } ;
struct virtio_scsi {int ctrl_vq; } ;
struct Scsi_Host {int dummy; } ;


 struct virtio_scsi* shost_priv (struct Scsi_Host*) ;
 struct Scsi_Host* virtio_scsi_host (int ) ;
 int virtscsi_complete_free ;
 int virtscsi_vq_done (struct virtio_scsi*,int *,int ) ;

__attribute__((used)) static void virtscsi_ctrl_done(struct virtqueue *vq)
{
 struct Scsi_Host *sh = virtio_scsi_host(vq->vdev);
 struct virtio_scsi *vscsi = shost_priv(sh);

 virtscsi_vq_done(vscsi, &vscsi->ctrl_vq, virtscsi_complete_free);
}
