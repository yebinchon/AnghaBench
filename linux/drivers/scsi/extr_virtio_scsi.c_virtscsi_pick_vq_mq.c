
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct virtio_scsi_vq {int dummy; } ;
struct virtio_scsi {struct virtio_scsi_vq* req_vqs; } ;
struct scsi_cmnd {int request; } ;


 int blk_mq_unique_tag (int ) ;
 size_t blk_mq_unique_tag_to_hwq (int ) ;

__attribute__((used)) static struct virtio_scsi_vq *virtscsi_pick_vq_mq(struct virtio_scsi *vscsi,
        struct scsi_cmnd *sc)
{
 u32 tag = blk_mq_unique_tag(sc->request);
 u16 hwq = blk_mq_unique_tag_to_hwq(tag);

 return &vscsi->req_vqs[hwq];
}
