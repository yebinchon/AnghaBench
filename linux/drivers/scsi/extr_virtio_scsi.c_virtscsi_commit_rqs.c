
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct virtio_scsi {int * req_vqs; } ;
struct Scsi_Host {int dummy; } ;


 struct virtio_scsi* shost_priv (struct Scsi_Host*) ;
 int virtscsi_kick_vq (int *) ;

__attribute__((used)) static void virtscsi_commit_rqs(struct Scsi_Host *shost, u16 hwq)
{
 struct virtio_scsi *vscsi = shost_priv(shost);

 virtscsi_kick_vq(&vscsi->req_vqs[hwq]);
}
