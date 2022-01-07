
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_scsi {int num_queues; int * req_vqs; } ;


 int virtscsi_complete_cmd ;
 int virtscsi_vq_done (struct virtio_scsi*,int *,int ) ;

__attribute__((used)) static void virtscsi_poll_requests(struct virtio_scsi *vscsi)
{
 int i, num_vqs;

 num_vqs = vscsi->num_queues;
 for (i = 0; i < num_vqs; i++)
  virtscsi_vq_done(vscsi, &vscsi->req_vqs[i],
     virtscsi_complete_cmd);
}
