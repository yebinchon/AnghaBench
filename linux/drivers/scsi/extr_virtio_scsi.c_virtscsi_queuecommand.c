
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct virtio_scsi_vq {int vq_lock; } ;
struct TYPE_9__ {int response; } ;
struct TYPE_10__ {TYPE_3__ cmd; } ;
struct TYPE_12__ {int cdb; } ;
struct TYPE_11__ {int cdb; } ;
struct TYPE_8__ {TYPE_6__ cmd; TYPE_5__ cmd_pi; } ;
struct virtio_scsi_cmd {TYPE_4__ resp; TYPE_2__ req; struct scsi_cmnd* sc; } ;
struct virtio_scsi {int vdev; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; int flags; int cmd_len; int * cmnd; TYPE_1__* device; } ;
struct Scsi_Host {scalar_t__ sg_tablesize; } ;
struct TYPE_7__ {int sdev_gendev; } ;


 int BUG_ON (int) ;
 scalar_t__ DMA_BIDIRECTIONAL ;
 int EIO ;
 int SCMD_LAST ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int VIRTIO_SCSI_CDB_SIZE ;
 int VIRTIO_SCSI_F_T10_PI ;
 int VIRTIO_SCSI_S_BAD_TARGET ;
 int dev_dbg (int *,char*,struct scsi_cmnd*,int ) ;
 int memcpy (int ,int *,int ) ;
 struct virtio_scsi_cmd* scsi_cmd_priv (struct scsi_cmnd*) ;
 scalar_t__ scsi_sg_count (struct scsi_cmnd*) ;
 struct virtio_scsi* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ virtio_has_feature (int ,int ) ;
 int virtio_scsi_init_hdr (int ,TYPE_6__*,struct scsi_cmnd*) ;
 int virtio_scsi_init_hdr_pi (int ,TYPE_5__*,struct scsi_cmnd*) ;
 int virtscsi_add_cmd (struct virtio_scsi_vq*,struct virtio_scsi_cmd*,int,int,int) ;
 int virtscsi_complete_cmd (struct virtio_scsi*,struct virtio_scsi_cmd*) ;
 struct virtio_scsi_vq* virtscsi_pick_vq_mq (struct virtio_scsi*,struct scsi_cmnd*) ;

__attribute__((used)) static int virtscsi_queuecommand(struct Scsi_Host *shost,
     struct scsi_cmnd *sc)
{
 struct virtio_scsi *vscsi = shost_priv(shost);
 struct virtio_scsi_vq *req_vq = virtscsi_pick_vq_mq(vscsi, sc);
 struct virtio_scsi_cmd *cmd = scsi_cmd_priv(sc);
 bool kick;
 unsigned long flags;
 int req_size;
 int ret;

 BUG_ON(scsi_sg_count(sc) > shost->sg_tablesize);


 BUG_ON(sc->sc_data_direction == DMA_BIDIRECTIONAL);

 dev_dbg(&sc->device->sdev_gendev,
  "cmd %p CDB: %#02x\n", sc, sc->cmnd[0]);

 cmd->sc = sc;

 BUG_ON(sc->cmd_len > VIRTIO_SCSI_CDB_SIZE);
 {
  virtio_scsi_init_hdr(vscsi->vdev, &cmd->req.cmd, sc);
  memcpy(cmd->req.cmd.cdb, sc->cmnd, sc->cmd_len);
  req_size = sizeof(cmd->req.cmd);
 }

 kick = (sc->flags & SCMD_LAST) != 0;
 ret = virtscsi_add_cmd(req_vq, cmd, req_size, sizeof(cmd->resp.cmd), kick);
 if (ret == -EIO) {
  cmd->resp.cmd.response = VIRTIO_SCSI_S_BAD_TARGET;
  spin_lock_irqsave(&req_vq->vq_lock, flags);
  virtscsi_complete_cmd(vscsi, cmd);
  spin_unlock_irqrestore(&req_vq->vq_lock, flags);
 } else if (ret != 0) {
  return SCSI_MLQUEUE_HOST_BUSY;
 }
 return 0;
}
