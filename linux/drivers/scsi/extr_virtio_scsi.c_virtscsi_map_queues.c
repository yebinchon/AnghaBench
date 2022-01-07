
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_scsi {int vdev; } ;
struct blk_mq_queue_map {int dummy; } ;
struct TYPE_2__ {struct blk_mq_queue_map* map; } ;
struct Scsi_Host {TYPE_1__ tag_set; } ;


 size_t HCTX_TYPE_DEFAULT ;
 int blk_mq_virtio_map_queues (struct blk_mq_queue_map*,int ,int) ;
 struct virtio_scsi* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int virtscsi_map_queues(struct Scsi_Host *shost)
{
 struct virtio_scsi *vscsi = shost_priv(shost);
 struct blk_mq_queue_map *qmap = &shost->tag_set.map[HCTX_TYPE_DEFAULT];

 return blk_mq_virtio_map_queues(qmap, vscsi->vdev, 2);
}
