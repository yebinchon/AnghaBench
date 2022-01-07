
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int index; int vdev; } ;
struct virtio_scsi_vq {int dummy; } ;
struct virtio_scsi {struct virtio_scsi_vq* req_vqs; } ;
struct Scsi_Host {int dummy; } ;


 int VIRTIO_SCSI_VQ_BASE ;
 struct virtio_scsi* shost_priv (struct Scsi_Host*) ;
 struct Scsi_Host* virtio_scsi_host (int ) ;
 int virtscsi_complete_cmd ;
 int virtscsi_vq_done (struct virtio_scsi*,struct virtio_scsi_vq*,int ) ;

__attribute__((used)) static void virtscsi_req_done(struct virtqueue *vq)
{
 struct Scsi_Host *sh = virtio_scsi_host(vq->vdev);
 struct virtio_scsi *vscsi = shost_priv(sh);
 int index = vq->index - VIRTIO_SCSI_VQ_BASE;
 struct virtio_scsi_vq *req_vq = &vscsi->req_vqs[index];

 virtscsi_vq_done(vscsi, req_vq, virtscsi_complete_cmd);
}
