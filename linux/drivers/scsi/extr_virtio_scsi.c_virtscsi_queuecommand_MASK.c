#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct virtio_scsi_vq {int /*<<< orphan*/  vq_lock; } ;
struct TYPE_9__ {int /*<<< orphan*/  response; } ;
struct TYPE_10__ {TYPE_3__ cmd; } ;
struct TYPE_12__ {int /*<<< orphan*/  cdb; } ;
struct TYPE_11__ {int /*<<< orphan*/  cdb; } ;
struct TYPE_8__ {TYPE_6__ cmd; TYPE_5__ cmd_pi; } ;
struct virtio_scsi_cmd {TYPE_4__ resp; TYPE_2__ req; struct scsi_cmnd* sc; } ;
struct virtio_scsi {int /*<<< orphan*/  vdev; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; int flags; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/ * cmnd; TYPE_1__* device; } ;
struct Scsi_Host {scalar_t__ sg_tablesize; } ;
struct TYPE_7__ {int /*<<< orphan*/  sdev_gendev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DMA_BIDIRECTIONAL ; 
 int EIO ; 
 int SCMD_LAST ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int /*<<< orphan*/  VIRTIO_SCSI_CDB_SIZE ; 
 int /*<<< orphan*/  VIRTIO_SCSI_F_T10_PI ; 
 int /*<<< orphan*/  VIRTIO_SCSI_S_BAD_TARGET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct virtio_scsi_cmd* FUNC3 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC4 (struct scsi_cmnd*) ; 
 struct virtio_scsi* FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_6__*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_5__*,struct scsi_cmnd*) ; 
 int FUNC11 (struct virtio_scsi_vq*,struct virtio_scsi_cmd*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct virtio_scsi*,struct virtio_scsi_cmd*) ; 
 struct virtio_scsi_vq* FUNC13 (struct virtio_scsi*,struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC14(struct Scsi_Host *shost,
				 struct scsi_cmnd *sc)
{
	struct virtio_scsi *vscsi = FUNC5(shost);
	struct virtio_scsi_vq *req_vq = FUNC13(vscsi, sc);
	struct virtio_scsi_cmd *cmd = FUNC3(sc);
	bool kick;
	unsigned long flags;
	int req_size;
	int ret;

	FUNC0(FUNC4(sc) > shost->sg_tablesize);

	/* TODO: check feature bit and fail if unsupported?  */
	FUNC0(sc->sc_data_direction == DMA_BIDIRECTIONAL);

	FUNC1(&sc->device->sdev_gendev,
		"cmd %p CDB: %#02x\n", sc, sc->cmnd[0]);

	cmd->sc = sc;

	FUNC0(sc->cmd_len > VIRTIO_SCSI_CDB_SIZE);

#ifdef CONFIG_BLK_DEV_INTEGRITY
	if (virtio_has_feature(vscsi->vdev, VIRTIO_SCSI_F_T10_PI)) {
		virtio_scsi_init_hdr_pi(vscsi->vdev, &cmd->req.cmd_pi, sc);
		memcpy(cmd->req.cmd_pi.cdb, sc->cmnd, sc->cmd_len);
		req_size = sizeof(cmd->req.cmd_pi);
	} else
#endif
	{
		FUNC9(vscsi->vdev, &cmd->req.cmd, sc);
		FUNC2(cmd->req.cmd.cdb, sc->cmnd, sc->cmd_len);
		req_size = sizeof(cmd->req.cmd);
	}

	kick = (sc->flags & SCMD_LAST) != 0;
	ret = FUNC11(req_vq, cmd, req_size, sizeof(cmd->resp.cmd), kick);
	if (ret == -EIO) {
		cmd->resp.cmd.response = VIRTIO_SCSI_S_BAD_TARGET;
		FUNC6(&req_vq->vq_lock, flags);
		FUNC12(vscsi, cmd);
		FUNC7(&req_vq->vq_lock, flags);
	} else if (ret != 0) {
		return SCSI_MLQUEUE_HOST_BUSY;
	}
	return 0;
}